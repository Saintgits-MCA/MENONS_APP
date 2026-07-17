from datetime import datetime, date, timedelta
from decimal import Decimal
from django.db.models import Q

from .models import AppointmentFeeRule, PatientVisitTracking, Appointments

def _parse_date(d):
    if isinstance(d, date):
        return d
    if isinstance(d, str):
        try:
            return datetime.strptime(d, "%Y-%m-%d").date()
        except Exception:
            return datetime.fromisoformat(d).date()
    raise ValueError("Unsupported date format")

def get_consultation_periods(patient_id):
    """Get all consultation periods for a patient"""
    consultation_visits = PatientVisitTracking.objects.filter(
        patient_id=patient_id,
        fee_type='FIRST_VISIT'
    ).order_by('visit_date')
    
    consultation_periods = []
    for visit in consultation_visits:
        period_end = visit.period_end_date if visit.period_end_date else visit.visit_date + timedelta(days=61) - timedelta(days=1)
        consultation_periods.append({
            'start_date': visit.period_start_date if visit.period_start_date else visit.visit_date,
            'end_date': period_end,
            'visit_date': visit.visit_date
        })
    
    return consultation_periods

def find_consultation_period_for_date(target_date, consultation_periods):
    """Find which consultation period a date falls into"""
    for period in consultation_periods:
        if period['start_date'] <= target_date <= period['end_date']:
            return period
    return None

def calculate_appointment_fee(patient_id, appointment_date):
    """
    Calculate appointment fee based on the following rules:
    
    1. Consultation Period (FIRST_VISIT): 500.00, 60 days validity
       - 1st visit: 500.00 (Consultation)
       - 2nd, 3rd, 4th visits within 60 days: 0.00 (FREE)
    
    2. Follow-up Periods: After consultation period OR after 4 visits in consultation
       - Paid visit (100.00) starts a 30-day period
       - Next visit within 30 days: 0.00 (FREE)
       - After 30 days, next visit is paid (100.00) and starts new 30-day period
    
    3. 183-day gap rule: If no visits for 183 days (6 months), next visit should be a new consultation (500.00)
    """
    from decimal import Decimal
    from datetime import timedelta

    appointment_date = _parse_date(appointment_date)

    # Load rules or defaults
    first_rule = AppointmentFeeRule.objects.filter(rule_type='FIRST_VISIT', is_active=True).first()
    follow_rule = AppointmentFeeRule.objects.filter(rule_type='FOLLOW_UP', is_active=True).first()
    first_fee = Decimal(first_rule.base_fee or 500) if first_rule else Decimal('500.00')
    follow_fee = Decimal(follow_rule.base_fee or 100) if follow_rule else Decimal('100.00')

    # Get all previous visits ordered by date
    all_visits = PatientVisitTracking.objects.filter(
        patient_id=patient_id,
        visit_date__lt=appointment_date
    ).order_by('-visit_date')

    # 🟢 Case 1: No previous visits → First Consultation
    if not all_visits.exists():
        period_start = appointment_date
        period_end = appointment_date + timedelta(days=61) - timedelta(days=1)
        return (first_fee, period_start, period_end, 'FIRST_VISIT', True)

    # Get last visit to check for 183-day gap
    last_visit = all_visits.first()
    days_since_last_visit = (appointment_date - last_visit.visit_date).days

    # 🟢 Case 2: 183-day gap rule → New Consultation
    if days_since_last_visit >= 183:
        period_start = appointment_date
        period_end = appointment_date + timedelta(days=61) - timedelta(days=1)
        return (first_fee, period_start, period_end, 'FIRST_VISIT', True)

    # Get the most recent consultation (FIRST_VISIT)
    last_consult = PatientVisitTracking.objects.filter(
        patient_id=patient_id,
        fee_type='FIRST_VISIT',
        visit_date__lt=appointment_date
    ).order_by('-visit_date').first()

    if not last_consult:
        # No consultation found, treat as first consultation
        period_start = appointment_date
        period_end = appointment_date + timedelta(days=61) - timedelta(days=1)
        return (first_fee, period_start, period_end, 'FIRST_VISIT', True)

    # Extract consultation period
    consult_start = last_consult.period_start_date if last_consult.period_start_date else last_consult.visit_date
    consult_end = last_consult.period_end_date if last_consult.period_end_date else (consult_start + timedelta(days=61) - timedelta(days=1))

    # Count ALL visits within consultation period (including the consultation itself)
    all_visits_in_consultation = PatientVisitTracking.objects.filter(
        patient_id=patient_id,
        visit_date__gte=consult_start,
        visit_date__lt=appointment_date
    ).count()

    # 🟢 Case 3: Inside consultation period (60 days)
    if consult_start <= appointment_date <= consult_end:
        # Count all previous visits inside this consultation period
        visits_in_consultation = PatientVisitTracking.objects.filter(
            patient_id=patient_id,
            visit_date__gte=consult_start,
            visit_date__lt=appointment_date
        ).order_by('visit_date')

        total_visits_in_period = visits_in_consultation.count() + 1  # Including current visit

        if total_visits_in_period == 1:
            # First visit → consultation fee
            return (first_fee, consult_start, consult_end, 'FIRST_VISIT', True)

        elif 2 <= total_visits_in_period <= 4:
            # 2nd, 3rd, 4th → free
            return (Decimal('0.00'), consult_start, consult_end, 'CONSULTATION_FREE', False)

        else:
            # 5th or later → start or continue 31-day follow-up cycles within consultation
            # Find last follow-up-paid inside consultation
            last_followup_paid = visits_in_consultation.filter(
                fee_type='FOLLOW_UP_PAID'
            ).order_by('-visit_date').first()

            if not last_followup_paid:
                # 5th visit → first paid follow-up
                follow_start = appointment_date
                follow_end = appointment_date + timedelta(days=31) - timedelta(days=1)
                return (follow_fee, follow_start, follow_end, 'FOLLOW_UP_PAID', False)
            else:
                # Determine whether we are within that 31-day follow-up window
                follow_start = last_followup_paid.period_start_date or last_followup_paid.visit_date
                follow_end = last_followup_paid.period_end_date or (follow_start + timedelta(days=31) - timedelta(days=1))

                if follow_start <= appointment_date <= follow_end:
                    # One free visit allowed per 31-day window
                    free_visits_in_followup = PatientVisitTracking.objects.filter(
                        patient_id=patient_id,
                        visit_date__gte=follow_start,
                        visit_date__lt=appointment_date,
                        fee_type='FOLLOW_UP_FREE'
                    ).count()

                    if free_visits_in_followup == 0:
                        return (Decimal('0.00'), follow_start, follow_end, 'FOLLOW_UP_FREE', False)
                    else:
                        # Already had free → start new 31-day paid period
                        new_follow_start = appointment_date
                        new_follow_end = appointment_date + timedelta(days=31) - timedelta(days=1)
                        return (follow_fee, new_follow_start, new_follow_end, 'FOLLOW_UP_PAID', False)
                else:
                    # Outside last 31-day window → start new 31-day paid cycle
                    new_follow_start = appointment_date
                    new_follow_end = appointment_date + timedelta(days=31) - timedelta(days=1)
                    return (follow_fee, new_follow_start, new_follow_end, 'FOLLOW_UP_PAID', False)


    # 🟢 Case 4: After consultation period OR follow-up logic
    # Find the most recent paid follow-up visit that started a period
    last_paid_followup = PatientVisitTracking.objects.filter(
        patient_id=patient_id,
        visit_date__lt=appointment_date,
        fee_type__in=['FOLLOW_UP_PAID', 'FIRST_VISIT']
    ).order_by('-visit_date').first()

    if last_paid_followup:
        # Determine period based on fee type
        if last_paid_followup.fee_type == 'FIRST_VISIT':
            # Coming from consultation period
            period_start_follow = last_paid_followup.visit_date
            period_end_follow = period_start_follow + timedelta(days=31) - timedelta(days=1)
        else:
            # Regular follow-up period
            period_start_follow = last_paid_followup.period_start_date if last_paid_followup.period_start_date else last_paid_followup.visit_date
            period_end_follow = last_paid_followup.period_end_date if last_paid_followup.period_end_date else (period_start_follow + timedelta(days=31) - timedelta(days=1))

        # Check if we're within the follow-up period
        if period_start_follow <= appointment_date <= period_end_follow:
            # Count free visits in this follow-up period
            free_visits_in_followup = PatientVisitTracking.objects.filter(
                patient_id=patient_id,
                visit_date__gte=period_start_follow,
                visit_date__lt=appointment_date,
                fee_type='FOLLOW_UP_FREE'
            ).count()

            if free_visits_in_followup == 0:
                # No free visit in this period → This is the free visit
                fee = Decimal('0.00')
                fee_type = 'FOLLOW_UP_FREE'
                return (fee, period_start_follow, period_end_follow, fee_type, False)
            else:
                # Already had free visit or outside logic → New paid period
                followup_start_new = appointment_date
                followup_end_new = appointment_date + timedelta(days=31) - timedelta(days=1)
                fee = follow_fee
                fee_type = 'FOLLOW_UP_PAID'
                return (fee, followup_start_new, followup_end_new, fee_type, False)
        else:
            # Outside follow-up period → Start new paid period
            followup_start_new = appointment_date
            followup_end_new = appointment_date + timedelta(days=31) - timedelta(days=1)
            fee = follow_fee
            fee_type = 'FOLLOW_UP_PAID'
            return (fee, followup_start_new, followup_end_new, fee_type, False)

    # Fallback: Start new follow-up period
    followup_start = appointment_date
    followup_end = appointment_date + timedelta(days=31) - timedelta(days=1)
    fee = follow_fee
    fee_type = 'FOLLOW_UP_PAID'
    return (fee, followup_start, followup_end, fee_type, False)