import requests
from datetime import timedelta
from django.utils import timezone
from django.db import transaction
from .models import ZohoConfig, ZohoAccessToken, Patient_details, Branch
from datetime import datetime
import logging

# Set up logging
logger = logging.getLogger(__name__)

def get_valid_zoho_access_token():
    """
    Get a valid Zoho access token.
    If current token is expired or doesn't exist, refresh it using refresh_token.
    """
    try:
        # Check if we have a valid token
        token_obj = ZohoAccessToken.objects.first()
        
        if token_obj and token_obj.is_valid():
            logger.info("✅ Using existing valid access token")
            return token_obj.access_token
        
        logger.info("🔄 Access token expired or not found. Refreshing...")
        
        # Get configuration
        config = ZohoConfig.objects.first()
        if not config:
            logger.error("❌ Zoho configuration not found")
            raise Exception("Zoho configuration not found")
        
        if not config.refresh_token:
            logger.error("❌ Refresh token not found in configuration")
            raise Exception("Refresh token not configured")
        
        # Prepare refresh request
        payload = {
            "refresh_token": config.refresh_token,
            "client_id": config.client_id,
            "client_secret": config.client_secret,
            "grant_type": "refresh_token",
        }
        
        logger.info(f"📤 Sending token refresh request to: {config.token_url}")
        
        try:
            response = requests.post(config.token_url, data=payload, timeout=30)
            response.raise_for_status()
        except requests.exceptions.RequestException as e:
            logger.error(f"❌ Token refresh request failed: {str(e)}")
            if hasattr(e.response, 'text'):
                logger.error(f"Response: {e.response.text}")
            raise Exception(f"Failed to refresh token: {str(e)}")
        
        token_data = response.json()
        logger.debug(f"Token response: {token_data}")
        
        access_token = token_data.get("access_token")
        if not access_token:
            logger.error(f"❌ No access_token in response: {token_data}")
            raise Exception("Token generation failed - no access_token in response")
        
        # Get expires_in from response (default to 3600 seconds = 1 hour)
        expires_in = token_data.get("expires_in", 3600)
        
        # Calculate expiration time (subtract 5 minutes buffer)
        expires_at = timezone.now() + timedelta(seconds=expires_in - 300)
        
        logger.info(f"✅ Got new access token, expires at: {expires_at}")
        
        # Save or update token
        if token_obj:
            token_obj.access_token = access_token
            token_obj.expires_at = expires_at
            token_obj.save()
            logger.info("📝 Updated existing token record")
        else:
            ZohoAccessToken.objects.create(
                access_token=access_token,
                expires_at=expires_at
            )
            logger.info("📝 Created new token record")
        
        return access_token
        
    except Exception as e:
        logger.error(f"❌ Error in get_valid_zoho_access_token: {str(e)}")
        raise

def generate_mrno(entry_date):
    """Generate Medical Record Number"""
    todate = entry_date.strftime("%Y%m%d")

    last_entry = (
        Patient_details.objects
        .filter(Entry_Date=todate)
        .select_for_update()
        .order_by('-id')
        .first()
    )

    refnid = 1
    if last_entry and last_entry.Medical_Record_Number:
        # Extract the counter from MRNO (assuming format: MRNOYYYYMMDD001)
        try:
            refnid = int(last_entry.Medical_Record_Number[12:]) + 1
        except (ValueError, IndexError):
            refnid = 1

    return f"MRNO{todate}{refnid:03d}"  # Pad with zeros to 3 digits

def fetch_and_save_zoho_contacts():
    """Fetch contacts from Zoho CRM and save as patients"""
    try:
        config = ZohoConfig.objects.first()
        if not config:
            logger.error("❌ Zoho configuration not found")
            raise Exception("Zoho configuration not found")

        logger.info("🔑 Getting access token...")
        access_token = get_valid_zoho_access_token()
        
        logger.info(f"🌐 Fetching contacts from Zoho CRM...")
        
        headers = {
            "Authorization": f"Zoho-oauthtoken {access_token}",
            "Content-Type": "application/json"
        }

        params = {
            "criteria": "(Online_Booking:equals:Yes)",
            "fields": "First_Name,Last_Name,Email,Mobile,Select_Gender,Created_Time,Mailing_City,Phone",
            "page": 1,
            "per_page": 200
        }

        try:
            response = requests.get(
                config.contacts_url, 
                headers=headers, 
                params=params, 
                timeout=30
            )
            
            # If 401 Unauthorized, token might have expired mid-request
            if response.status_code == 401:
                logger.warning("⚠️ Received 401 Unauthorized. Token may have expired.")
                logger.warning("🔄 Deleting token and retrying...")
                
                # Delete the expired token
                ZohoAccessToken.objects.all().delete()
                
                # Get a fresh token
                access_token = get_valid_zoho_access_token()
                headers["Authorization"] = f"Zoho-oauthtoken {access_token}"
                
                # Retry the request
                response = requests.get(
                    config.contacts_url, 
                    headers=headers, 
                    params=params, 
                    timeout=30
                )
            
            response.raise_for_status()
            
        except requests.exceptions.HTTPError as http_err:
            logger.error(f"❌ HTTP error: {http_err}")
            logger.error(f"Response status: {response.status_code if response else 'No response'}")
            logger.error(f"Response text: {response.text if response else 'No text'}")
            raise Exception(f"HTTP error fetching contacts: {http_err}")
            
        except requests.exceptions.RequestException as req_err:
            logger.error(f"❌ Request error: {req_err}")
            raise Exception(f"Request error: {req_err}")
        
        data = response.json()
        logger.debug(f"Response data keys: {data.keys()}")
        
        # Check if we got the expected data
        if 'data' not in data:
            if 'error' in data:
                error_msg = data['error'].get('message', 'Unknown error')
                error_code = data['error'].get('code', 'Unknown')
                raise Exception(f"Zoho API Error {error_code}: {error_msg}")
            else:
                logger.error(f"Unexpected response format: {data}")
                raise Exception(f"Unexpected response format from Zoho")
        
        contacts = data.get("data", [])
        logger.info(f"✅ Successfully fetched {len(contacts)} contacts")

        try:
            branch = Branch.objects.get(id=28)  
        except Branch.DoesNotExist:
            logger.error("❌ Branch with id=28 not found")
            raise Exception("PALA branch (id=28) not found")

        saved_patients = []
        skipped_count = 0

        for c in contacts:
            zoho_id = c.get("id")
            
            if not zoho_id:
                logger.warning("⚠️ Contact without ID found, skipping")
                skipped_count += 1
                continue

            # Skip duplicates
            if Patient_details.objects.filter(zoho_contact_id=zoho_id).exists():
                logger.debug(f"⏭️ Skipping duplicate contact: {zoho_id}")
                skipped_count += 1
                continue

            created_time = c.get("Created_Time")
            if not created_time:
                logger.warning(f"⚠️ Contact {zoho_id} has no Created_Time, skipping")
                skipped_count += 1
                continue

            try:
                # Parse the ISO format datetime
                if 'T' in created_time:
                    # Handle ISO format with timezone
                    created_date = datetime.fromisoformat(
                        created_time.replace('Z', '+00:00')
                    ).date()
                else:
                    # Handle date-only format
                    created_date = datetime.strptime(created_time, "%Y-%m-%d").date()
            except (ValueError, TypeError) as e:
                logger.error(f"❌ Error parsing date '{created_time}' for contact {zoho_id}: {e}")
                skipped_count += 1
                continue

            with transaction.atomic():
                mrno = generate_mrno(created_date)

                # Build patient name - FIXED: Include both first and last name
                first_name = c.get("First_Name", "")
                last_name = c.get("Last_Name", "")
                patient_name = f"{first_name} {last_name}".strip()
                
                # If no name at all, use a default
                if not patient_name:
                    patient_name = "Unknown Patient"
                    logger.warning(f"⚠️ Contact {zoho_id} has no name, using default")

                # Create the patient
                patient = Patient_details.objects.create(
                    Patient_Name=patient_name,
                    Email=c.get("Email", ""),
                    contactno=c.get("Mobile") or c.get("Phone") or "",
                    Gender=c.get("Select_Gender", ""),
                    district=c.get("Mailing_City", ""),
                    Entry_Date=created_date.strftime("%Y%m%d"),
                    Date=created_date,
                    Medical_Record_Number=mrno,
                    Branch_Name=branch,
                    zoho_contact_id=zoho_id,
                    consultation_type='online'
                )

                saved_patients.append(patient)
                logger.debug(f"✅ Created patient: {mrno} - {patient_name}")

        logger.info(f"📊 Summary: Saved {len(saved_patients)} new patients, skipped {skipped_count} contacts")
        return saved_patients
        
    except Exception as e:
        logger.error(f"❌ Error in fetch_and_save_zoho_contacts: {str(e)}")
        raise Exception(f"Failed to fetch and save Zoho contacts: {str(e)}")