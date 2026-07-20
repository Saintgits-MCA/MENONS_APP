# utils.py
from datetime import datetime, timedelta
from django.db import models
from django.db.models import Sum
from decimal import Decimal
from .models import (
    Patient_details, Staffdetails, Appointments, 
    PatientVisitCycleLog, PatientVisitCycleAppointment,
    AppointmentFee, Branch
)
import logging

logger = logging.getLogger(__name__)

# def save_visit_cycle_log(patient_id, doctor_id, appointment, status, branch_id=None):
#     """
#     Save or update the visit cycle log with normalized child records
#     """
#     try:
#         patient = Patient_details.objects.get(id=patient_id)
#         doctor = Staffdetails.objects.get(id=doctor_id)
#         print(f"🔍 save_visit_cycle_log called - Patient: {patient.Patient_Name}, Doctor: {doctor.Staff_firstname}, Status: {status}, Appointment ID: {appointment.id}")
#         # ✅ Convert appointment date to date object if it's a string
#         appointment_date = appointment.Appointment_date
#         if isinstance(appointment_date, str):
#             appointment_date = datetime.strptime(appointment_date, '%Y-%m-%d').date()
        
#         # Get current settings from AppointmentFee
#         consultation_setting = AppointmentFee.objects.filter(
#             doctor_id=doctor_id, visit_type='Consultation', is_active=True
#         ).first()
#         revisit_setting = AppointmentFee.objects.filter(
#             doctor_id=doctor_id, visit_type='Revisit', is_active=True
#         ).first()
#         followup_setting = AppointmentFee.objects.filter(
#             doctor_id=doctor_id, visit_type='Followup', is_active=True
#         ).first()
        
#         # Convert to Decimal for proper type handling
#         consultation_fee = Decimal(str(consultation_setting.fee_amount)) if consultation_setting else Decimal('0.00')
#         revisit_fee = Decimal(str(revisit_setting.fee_amount)) if revisit_setting else Decimal('0.00')
#         followup_fee = Decimal(str(followup_setting.fee_amount)) if followup_setting else Decimal('0.00')
        
#         consultation_days = consultation_setting.no_of_days if consultation_setting else 0
#         revisit_days = revisit_setting.no_of_days if revisit_setting else 0
#         max_revisit_count = revisit_setting.max_visit_count if revisit_setting else 0
#         followup_days = followup_setting.no_of_days if followup_setting else 0
#         max_followup_count = followup_setting.max_visit_count if followup_setting else 0
        
#         # Convert appointment fee to Decimal
#         appointment_fee = Decimal(str(appointment.Fee or '0.00'))
        
#         if status == 'Consultation':
#             # ✅ NEW CONSULTATION
#             # Close existing active cycle
#             PatientVisitCycleLog.objects.filter(
#                 patient=patient, doctor=doctor, is_cycle_active=True
#             ).update(
#                 is_cycle_active=False, 
#                 is_cycle_closed=True, 
#                 cycle_end_date=appointment_date,
#                 cycle_closed_reason='manual_close'
#             )
            
#             # Create cycle master
#             cycle_log = PatientVisitCycleLog.objects.create(
#                 patient=patient,
#                 doctor=doctor,
#                 branch_id=branch_id,
#                 consultation_date=appointment_date,
#                 consultation_appointment=appointment,
#                 consultation_fee=consultation_fee,
#                 consultation_count=1,
#                 revisit_count=0,
#                 followup_count=0,
#                 total_visits_in_cycle=1,
#                 total_fee_collected=appointment_fee,
#                 total_revisit_fees=Decimal('0.00'),
#                 total_followup_fees=Decimal('0.00'),
#                 consultation_days=consultation_days,
#                 revisit_days=revisit_days,
#                 max_revisit_count=max_revisit_count,
#                 followup_days=followup_days,
#                 max_followup_count=max_followup_count,
#                 consultation_fee_setting=consultation_fee,
#                 revisit_fee_setting=revisit_fee,
#                 followup_fee_setting=followup_fee,
#                 current_appointment=appointment,
#                 current_status='Consultation',
#                 days_from_consultation=0,
#                 is_cycle_active=True,
#                 is_cycle_closed=False
#             )
            
#             # Create child record for consultation
#             PatientVisitCycleAppointment.objects.create(
#                 cycle=cycle_log,
#                 appointment=appointment,
#                 status='Consultation',
#                 fee=appointment_fee,
#                 order_in_cycle=1,
#                 days_from_consultation=0
#             )
            
#             logger.info(f"✅ Created new consultation cycle for {patient.Patient_Name} with Dr.{doctor.Staff_firstname}")
#             return cycle_log
            
#         else:
#             # ✅ REVISIT or FOLLOWUP
#             try:
#                 cycle_log = PatientVisitCycleLog.objects.get(
#                     patient=patient, doctor=doctor, is_cycle_active=True
#                 )
                
#                 # ✅ Calculate days from consultation using proper date objects
#                 days_from_consultation = (appointment_date - cycle_log.consultation_date).days
                
#                 # Update counts with proper Decimal operations
#                 if status == 'Revisit':
#                     cycle_log.revisit_count += 1
#                     cycle_log.total_revisit_fees = cycle_log.total_revisit_fees + appointment_fee
#                 elif status == 'Followup':
#                     cycle_log.followup_count += 1
#                     cycle_log.total_followup_fees = cycle_log.total_followup_fees + appointment_fee
                
#                 cycle_log.total_visits_in_cycle += 1
#                 cycle_log.total_fee_collected = cycle_log.total_fee_collected + appointment_fee
#                 cycle_log.current_appointment = appointment
#                 cycle_log.current_status = status
#                 cycle_log.days_from_consultation = days_from_consultation
#                 cycle_log.save()
                
#                 # Create child record
#                 PatientVisitCycleAppointment.objects.create(
#                     cycle=cycle_log,
#                     appointment=appointment,
#                     status=status,
#                     fee=appointment_fee,
#                     order_in_cycle=cycle_log.total_visits_in_cycle,
#                     days_from_consultation=days_from_consultation
#                 )
                
#                 # Check if cycle should close
#                 close_reason = None
#                 if cycle_log.followup_count >= cycle_log.max_followup_count:
#                     close_reason = 'max_followup_reached'
#                 elif days_from_consultation > cycle_log.consultation_days:
#                     close_reason = 'consultation_days_expired'
                
#                 if close_reason:
#                     cycle_log.is_cycle_active = False
#                     cycle_log.is_cycle_closed = True
#                     cycle_log.cycle_end_date = appointment_date
#                     cycle_log.cycle_closed_reason = close_reason
#                     cycle_log.save()
#                     logger.info(f"🔒 Cycle closed for {patient.Patient_Name} - Reason: {close_reason}")
                
#                 logger.info(f"✅ Added {status} to cycle for {patient.Patient_Name} (Total: {cycle_log.total_visits_in_cycle})")
#                 return cycle_log
                
#             except PatientVisitCycleLog.DoesNotExist:
#                 logger.warning(f"⚠️ No active cycle found for {patient.Patient_Name}, creating consultation")
#                 return save_visit_cycle_log(
#                     patient_id, doctor_id, appointment, 'Consultation', branch_id
#                 )
                
#     except Exception as e:
#         logger.error(f"❌ Error saving visit cycle log: {str(e)}")
#         import traceback
#         traceback.print_exc()
#         return None

def save_visit_cycle_log(patient_id, doctor_id, appointment, status, branch_id=None):
    """
    Save or update the visit cycle log with normalized child records
    Now handles any status type, not just Consultation, Revisit, Followup
    """
    try:
        patient = Patient_details.objects.get(id=patient_id)
        doctor = Staffdetails.objects.get(id=doctor_id)
        print(f"🔍 save_visit_cycle_log called - Patient: {patient.Patient_Name}, Doctor: {doctor.Staff_firstname}, Status: {status}, Appointment ID: {appointment.id}")
        
        # ✅ Convert appointment date to date object if it's a string
        appointment_date = appointment.Appointment_date
        if isinstance(appointment_date, str):
            appointment_date = datetime.strptime(appointment_date, '%Y-%m-%d').date()
        
        # Get current settings from AppointmentFee
        consultation_setting = AppointmentFee.objects.filter(
            doctor_id=doctor_id, visit_type='Consultation', is_active=True
        ).first()
        revisit_setting = AppointmentFee.objects.filter(
            doctor_id=doctor_id, visit_type='Revisit', is_active=True
        ).first()
        followup_setting = AppointmentFee.objects.filter(
            doctor_id=doctor_id, visit_type='Followup', is_active=True
        ).first()
        
        # Convert to Decimal for proper type handling
        consultation_fee = Decimal(str(consultation_setting.fee_amount)) if consultation_setting else Decimal('0.00')
        revisit_fee = Decimal(str(revisit_setting.fee_amount)) if revisit_setting else Decimal('0.00')
        followup_fee = Decimal(str(followup_setting.fee_amount)) if followup_setting else Decimal('0.00')
        
        
        # Convert appointment fee to Decimal
        appointment_fee = Decimal(str(appointment.Fee or '0.00'))
        
        # ✅ Check if status is one of the standard types
        standard_statuses = ['Consultation', 'Revisit', 'Followup']
        
        if status == 'Consultation':
            # ✅ NEW CONSULTATION
            # Close existing active cycle
            PatientVisitCycleLog.objects.filter(
                patient=patient, doctor=doctor, is_cycle_active=True
            ).update(
                is_cycle_active=False, 
                is_cycle_closed=True, 
                cycle_end_date=appointment_date,
                cycle_closed_reason='manual_close'
            )
            
            # Create cycle master
            cycle_log = PatientVisitCycleLog.objects.create(
                patient=patient,
                doctor=doctor,
                branch_id=branch_id,
                consultation_date=appointment_date,
                consultation_appointment=appointment,
                consultation_fee=consultation_fee,
                consultation_count=1,
                revisit_count=0,
                followup_count=0,
                total_visits_in_cycle=1,
                total_fee_collected=appointment_fee,
                total_revisit_fees=Decimal('0.00'),
                total_followup_fees=Decimal('0.00'),
                consultation_fee_setting=consultation_fee,
                revisit_fee_setting=revisit_fee,
                followup_fee_setting=followup_fee,
                current_appointment=appointment,
                current_status='Consultation',
                days_from_consultation=0,
                is_cycle_active=True,
                is_cycle_closed=False
            )
            
            # Create child record for consultation
            PatientVisitCycleAppointment.objects.create(
                cycle=cycle_log,
                appointment=appointment,
                status='Consultation',
                fee=appointment_fee,
                order_in_cycle=1,
                days_from_consultation=0
            )
            
            logger.info(f"✅ Created new consultation cycle for {patient.Patient_Name} with Dr.{doctor.Staff_firstname}")
            return cycle_log
            
        elif status in ['Revisit', 'Followup']:
            # ✅ REVISIT or FOLLOWUP - Standard flow
            try:
                cycle_log = PatientVisitCycleLog.objects.get(
                    patient=patient, doctor=doctor, is_cycle_active=True
                )
                
                # ✅ Calculate days from consultation using proper date objects
                days_from_consultation = (appointment_date - cycle_log.consultation_date).days
                
                # Update counts with proper Decimal operations
                if status == 'Revisit':
                    cycle_log.revisit_count += 1
                    cycle_log.total_revisit_fees = cycle_log.total_revisit_fees + appointment_fee
                elif status == 'Followup':
                    cycle_log.followup_count += 1
                    cycle_log.total_followup_fees = cycle_log.total_followup_fees + appointment_fee
                
                cycle_log.total_visits_in_cycle += 1
                cycle_log.total_fee_collected = cycle_log.total_fee_collected + appointment_fee
                cycle_log.current_appointment = appointment
                cycle_log.current_status = status
                cycle_log.days_from_consultation = days_from_consultation
                cycle_log.save()
                
                # Create child record
                PatientVisitCycleAppointment.objects.create(
                    cycle=cycle_log,
                    appointment=appointment,
                    status=status,
                    fee=appointment_fee,
                    order_in_cycle=cycle_log.total_visits_in_cycle,
                    days_from_consultation=days_from_consultation
                )
                
                # Check if cycle should close
                close_reason = None
                if cycle_log.followup_count >= cycle_log.max_followup_count:
                    close_reason = 'max_followup_reached'
                elif days_from_consultation > cycle_log.consultation_days:
                    close_reason = 'consultation_days_expired'
                
                if close_reason:
                    cycle_log.is_cycle_active = False
                    cycle_log.is_cycle_closed = True
                    cycle_log.cycle_end_date = appointment_date
                    cycle_log.cycle_closed_reason = close_reason
                    cycle_log.save()
                    logger.info(f"🔒 Cycle closed for {patient.Patient_Name} - Reason: {close_reason}")
                
                logger.info(f"✅ Added {status} to cycle for {patient.Patient_Name} (Total: {cycle_log.total_visits_in_cycle})")
                return cycle_log
                
            except PatientVisitCycleLog.DoesNotExist:
                logger.warning(f"⚠️ No active cycle found for {patient.Patient_Name}, creating consultation")
                return save_visit_cycle_log(
                    patient_id, doctor_id, appointment, 'Consultation', branch_id
                )
        
        else:
            # ✅ OTHER STATUS - Save as-is without counts
            # This handles any status like 'Lab Test', 'Procedure', etc.
            try:
                # Try to find existing active cycle
                cycle_log = PatientVisitCycleLog.objects.filter(
                    patient=patient, doctor=doctor, is_cycle_active=True
                ).first()
                
                if not cycle_log:
                    # If no active cycle exists, create a new one with consultation defaults
                    # Close existing active cycle
                    PatientVisitCycleLog.objects.filter(
                        patient=patient, doctor=doctor, is_cycle_active=True
                    ).update(
                        is_cycle_active=False, 
                        is_cycle_closed=True, 
                        cycle_end_date=appointment_date,
                        cycle_closed_reason='manual_close'
                    )
                    
                    # Create cycle master with default consultation values
                    cycle_log = PatientVisitCycleLog.objects.create(
                        patient=patient,
                        doctor=doctor,
                        branch_id=branch_id,
                        consultation_date=appointment_date,
                        consultation_appointment=appointment,
                        consultation_fee=consultation_fee,
                        consultation_count=1,
                        revisit_count=0,
                        followup_count=0,
                        total_visits_in_cycle=1,
                        total_fee_collected=appointment_fee,
                        total_revisit_fees=Decimal('0.00'),
                        total_followup_fees=Decimal('0.00'),
                        consultation_days=consultation_days,
                        revisit_days=revisit_days,
                        max_revisit_count=max_revisit_count,
                        followup_days=followup_days,
                        max_followup_count=max_followup_count,
                        consultation_fee_setting=consultation_fee,
                        revisit_fee_setting=revisit_fee,
                        followup_fee_setting=followup_fee,
                        current_appointment=appointment,
                        current_status=status,  # Set to the actual status
                        days_from_consultation=0,
                        is_cycle_active=True,
                        is_cycle_closed=False
                    )
                    
                    # Create child record with the actual status
                    PatientVisitCycleAppointment.objects.create(
                        cycle=cycle_log,
                        appointment=appointment,
                        status=status,  # Use the actual status
                        fee=appointment_fee,
                        order_in_cycle=1,
                        days_from_consultation=0
                    )
                    
                    logger.info(f"✅ Created new cycle with status '{status}' for {patient.Patient_Name}")
                    return cycle_log
                
                # Update existing cycle with the new status
                days_from_consultation = (appointment_date - cycle_log.consultation_date).days if cycle_log.consultation_date else 0
                
                # Increment total visits but not specific counts
                cycle_log.total_visits_in_cycle += 1
                cycle_log.total_fee_collected = cycle_log.total_fee_collected + appointment_fee
                cycle_log.current_appointment = appointment
                cycle_log.current_status = status  # Update to the actual status
                cycle_log.days_from_consultation = days_from_consultation
                cycle_log.save()
                
                # Create child record with the actual status
                PatientVisitCycleAppointment.objects.create(
                    cycle=cycle_log,
                    appointment=appointment,
                    status=status,  # Use the actual status
                    fee=appointment_fee,
                    order_in_cycle=cycle_log.total_visits_in_cycle,
                    days_from_consultation=days_from_consultation
                )
                
                logger.info(f"✅ Added '{status}' to cycle for {patient.Patient_Name} (Total: {cycle_log.total_visits_in_cycle})")
                return cycle_log
                
            except Exception as e:
                logger.error(f"❌ Error processing other status {status}: {str(e)}")
                return None
                
    except Exception as e:
        logger.error(f"❌ Error saving visit cycle log: {str(e)}")
        import traceback
        traceback.print_exc()
        return None