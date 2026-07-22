from django.db import models,transaction
import datetime
# Create your models here.

    
from django.utils.timezone import now
from django.utils import timezone
class Hospitaldetails(models.Model):
    Name = models.CharField(max_length = 500)
    Address= models.CharField(max_length = 300)
    Logo=models.ImageField(upload_to='images')
    Register_no=models.CharField(max_length = 300)
    GST=models.CharField(max_length=300, default='none')
    Manager_name=models.CharField(max_length = 300)
    Contact_no=models.CharField(max_length = 100)
    Email=models.EmailField(max_length = 300)

class Branch(models.Model):
    Branch_Name = models.CharField(max_length=500)
    Branch_Address = models.CharField(max_length=300)
    Branch_contactno = models.CharField(max_length=100)
    Branch_InchargeName = models.CharField(max_length=300)
    Branch_Incharge_contactno = models.CharField(max_length=100)
    gstno = models.CharField(max_length=500, default='none', null=True)
    hosporclinic = models.CharField(max_length=500, default='none', null=True)
    compositiontax = models.BooleanField(default=False)
    inactive = models.BooleanField(default=False)
    is_franchise = models.BooleanField(default=False)
class Department(models.Model):
    Department_Name=models.CharField(max_length = 500)
    flag=models.BooleanField(default=True)

class Designation(models.Model):
    Designation_Name=models.CharField(max_length = 500)

class Country(models.Model):
    Country_Name=models.CharField(max_length = 300)

class State(models.Model):
    State_Name=models.CharField(max_length = 300)

class District(models.Model):
    District_name=models.CharField(max_length = 300,default='None')

class City(models.Model):
    City_name=models.CharField(max_length = 300)

class Staffdetails(models.Model):
    Staff_firstname=models.CharField(max_length = 300)
    Staff_lastname=models.CharField(max_length = 300)
    address=models.CharField(max_length = 300)
    Gender=models.CharField(max_length = 30)
    Email=models.EmailField(max_length = 300,default=None,null=True)
    contactno=models.CharField(max_length = 100,default=None,null=True)
    Qualification=models.CharField(max_length = 300,default=None,null=True)
    Joining_date=models.DateField(default=None,null=True)
    Pancard_No=models.CharField(max_length = 300,default=None,null=True)
    deleted = models.BooleanField(default=False)  # Soft delete flag
    deleted_date = models.DateField(null=True, blank=True)  # Date of deletion
    def soft_delete(self):
        """Soft delete the Staff by setting deleted to True and logging the deletion date."""
        self.deleted = True
        self.deleted_date = timezone.now()
        self.save()


class Package_deatils(models.Model):
    Package_Name=models.CharField(max_length = 300)
    Treatment_name=models.CharField(max_length=3000,default=None)
    # .ForeignKey(Treatment_master,on_delete=models.CASCADE,default=None)
    Frequency=models.CharField(max_length=300,default=None)
    Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)
    Package_rate=models.IntegerField()

class Staffallocation(models.Model):
    Staff=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=None)
    Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)
    Department_Name=models.ForeignKey(Department,on_delete=models.CASCADE,default=None)
    Designation_Name=models.ForeignKey(Designation,on_delete=models.CASCADE,default=None)
    Status=models.CharField(max_length = 300)
    Username=models.CharField(max_length = 300)
    Password=models.CharField(max_length = 300)

class Treatment_master(models.Model):
    Treatment_name=models.CharField(max_length = 300)
    Rate=models.CharField(max_length = 300)
    Description=models.CharField(max_length = 500)
    Status=models.CharField(max_length = 300)


class Patient_details(models.Model):
    CONSULTATION_CHOICES = (
        ('online', 'Online'),
        ('offline', 'Offline'),
    )
    Patient_Name=models.CharField(max_length = 300)
    address=models.CharField(max_length = 300,default=None,null=True)
    Entry_Date=models.CharField(max_length = 300)
    Medical_Record_Number=models.CharField(max_length = 300)
    Age=models.CharField(max_length = 30,null=True)
    Gender=models.CharField(max_length = 30)
    Email=models.EmailField(max_length = 300)
    contactno=models.CharField(max_length = 100)
    country=models.ForeignKey(Country,on_delete=models.CASCADE,default=None,null=True)
    state=models.ForeignKey(State,on_delete=models.CASCADE,default=None,null=True)
    district = models.CharField(max_length=300, default=None, null=True)
    Date=models.DateField(default=None)
    Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)
    deleted = models.BooleanField(default=False)  
    deleted_date = models.DateField(null=True, blank=True) 
    zoho_contact_id = models.CharField(max_length=100, null=True, blank=True, unique=True)
    consultation_type = models.CharField(max_length=10, choices=CONSULTATION_CHOICES, default='offline')
    reg_Fee = models.DecimalField(default=0,null=True,decimal_places=2,max_digits=8)
    
    def soft_delete(self, staff):
        """Soft delete the Patient by setting deleted to True and logging the deletion."""
        self.deleted = True
        self.deleted_date = timezone.now()
        self.save()
        PatientAuditLog.objects.create(
            patient=self,
            action="DELETE",
            staff=staff,
            branch=self.Branch_Name,
            timestamp=timezone.now()
        )
    def restore(self, staff):
        """Restore a soft-deleted Patient."""
        self.deleted = False
        self.deleted_date = None
        self.save()
        PatientAuditLog.objects.create(
            patient=self,
            action="RESTORE",
            staff=staff,
            branch=self.Branch_Name,
            timestamp=timezone.now()
        )
        
class PatientAuditLog(models.Model):
    ACTION_CHOICES = [
        ("INSERT", "Insert"),
        ("UPDATE", "Update"),
        ("DELETE", "Delete"),
        ("RESTORE", "Restore")
    ]

    mrno = models.CharField(max_length=100, null=True, blank=True)
    patientid = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
    action = models.CharField(max_length=10, choices=ACTION_CHOICES)
    staff = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.SET_NULL, null=True)

    # 🔹 NEW FIELDS
    field_name = models.CharField(max_length=100, null=True, blank=True)
    old_value = models.TextField(null=True, blank=True)
    new_value = models.TextField(null=True, blank=True)

    action_date = models.DateField(default=timezone.now)
    action_time = models.TimeField(default=timezone.now)

    def formatted_time(self):
        return self.action_time.strftime("%I:%M %p")

    def __str__(self):
        return f"{self.action} - {self.field_name}"

class Room_details(models.Model):
    Floorno = models.CharField(max_length=50)
    Blockno = models.CharField(max_length=50)
    Roomno = models.CharField(max_length=50, null=True, blank=True)  # Room No should allow null for Wards
    Room_type = models.CharField(max_length=300, null=True, blank=True)  # Room Type should allow null for Wards
    is_available = models.BooleanField(default=True)
    wardorroom = models.CharField(max_length=300, default="room")
    branchidrm = models.ForeignKey(Branch, on_delete=models.CASCADE, related_name='br_id', default=None)
    bed_type = models.CharField(max_length=300, default=None)
    rate = models.CharField(max_length=10, default=None)
    wardbedno = models.CharField(max_length=10, null=True, blank=True)
    nursing_charge = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    water_electricity_charge = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)


class Equipment_master(models.Model):
    Equipment_name=models.CharField(max_length = 300)
    Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)


class Comapany(models.Model):
    Comapany_name=models.CharField(max_length = 300)

class ItemCategory(models.Model):
    Category_name=models.CharField(max_length = 300)

class ItemSubcategory(models.Model):
    Category_name=models.ForeignKey(ItemCategory,on_delete=models.CASCADE,default=None)
    Subcategory_name=models.CharField(max_length = 300)

class Batch(models.Model):
    Batch_no=models.CharField(max_length = 300)

class baseunit(models.Model):
    unit=models.CharField(max_length=300)
    symbol=models.CharField(max_length=100)

class unitdt(models.Model):
    bsuntid=models.ForeignKey(baseunit,on_delete=models.CASCADE)
    unitname=models.CharField(max_length=300)
    basequantity=models.CharField(max_length=300)

class storedetails(models.Model):
    storename=models.CharField(max_length=300)

class Taxmaster(models.Model):
    taxrate=models.CharField(max_length=300)
    

class medicinemaster(models.Model):
    itemcode=models.CharField(max_length = 100,null=True)
    itemnm=models.CharField(max_length = 300)
    bsuntid=models.ForeignKey(baseunit,on_delete=models.CASCADE)
    Generic_name=models.CharField(max_length = 300,default=None,null=True)
    Subcategory_name=models.ForeignKey(ItemSubcategory,on_delete=models.CASCADE, null=True, blank=True)
    racknumber=models.CharField(max_length = 300,default=None,null=True)
    Sideeffect=models.CharField(max_length = 300,default=None,null=True)
    hsncode=models.CharField(max_length = 300,default=None,null=True)
    taxpercentage=models.ForeignKey(Taxmaster,on_delete=models.CASCADE, null=True, blank=True)
class medicinemaster_new(models.Model):
    itemcode = models.CharField(max_length=100, null=True)
    itemnm = models.CharField(max_length=300)
    bsuntid = models.ForeignKey(baseunit, on_delete=models.CASCADE)
    Generic_name = models.CharField(max_length=300, default=None, null=True)
    Subcategory_name = models.ForeignKey(ItemSubcategory, on_delete=models.CASCADE, null=True, blank=True)
    racknumber = models.CharField(max_length=300, default=None, null=True)
    Sideeffect = models.CharField(max_length=300, default=None, null=True)
    hsncode = models.CharField(max_length=300, default=None, null=True)
    taxpercentage = models.ForeignKey(Taxmaster, on_delete=models.CASCADE, null=True, blank=True)
    
class medicinemasterrate(models.Model):
    
    itemid = models.ForeignKey(medicinemaster_new, on_delete=models.CASCADE, null=True, blank=True)
    branchid =  models.ForeignKey(Branch, on_delete=models.CASCADE, null=True, blank=True)
    mrp = models.CharField(max_length=300, default=None, null=True)
   
    
class Itemaster(models.Model):
    Purchase_Invoice_no=models.CharField(max_length = 300)   
    Medicinename=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    Generic_name=models.CharField(max_length = 300)
    Comapany_name=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    Subcategory_name=models.ForeignKey(ItemSubcategory,on_delete=models.CASCADE, null=True, blank=True)
    Manufacturer_date=models.DateField(null=True)
    Expiry_date=models.DateField(null=True)
    Sideeffect=models.CharField(max_length = 300)
    Quantity=models.CharField(max_length = 300)
    Batch_no=models.CharField(max_length = 500)
    Rate=models.CharField(max_length = 300)
    Suppliername=models.CharField(max_length = 300,default=None)
    racknumber=models.CharField(max_length = 300,default=None)
    # bsquantity=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)

# class Patientadmission(models.Model):
# 	MR_No=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
# 	Roomno=models.CharField(max_length = 100)
# 	Bystandername=models.CharField(max_length = 100)
# 	BystanderPhno=models.CharField(max_length = 100)
# 	Department_Name=models.ForeignKey(Department,on_delete=models.CASCADE,default=None)
# 	Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)
# 	Booking_Date = models.TextField(default=None)
# 	Admitted_Date = models.TextField(default=None)
# 	status = models.BooleanField(default=True)
# 	Bookingend_Date = models.TextField(default=None)

class DailyTreatmentdetails(models.Model):
    Staff_name = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=None)
    Patient_Name = models.ForeignKey(Patient_details, on_delete=models.CASCADE, default=None, related_name='patient_treatments')
    Treatment_name = models.CharField(max_length=400)
    Medicinename = models.CharField(max_length=5000)
    MR_Number = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='mr_treatments', default=None)  # Adjust related_name as needed
    Status = models.CharField(max_length=100)
    Current_date = models.DateField()


class Patient_history(models.Model):
    Patient_Name=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Details=models.CharField(max_length = 300)
    Allergy_type=models.CharField(max_length = 300)
    Height=models.CharField(max_length = 30)
    Weight=models.CharField(max_length = 30)
    Blood_group=models.CharField(max_length = 30)


class Appointments(models.Model):
    Tokenno = models.CharField(max_length=300)
    Doctor_Name = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=None)
    Appointment_date = models.DateField()
    Branch = models.ForeignKey(Branch, on_delete=models.CASCADE, default=None)
    MR_Number = models.ForeignKey(Patient_details, on_delete=models.CASCADE, default=None)
    contactno = models.CharField(max_length=100, default=None)
    status = models.CharField(max_length=100, default=None)
    Remark = models.CharField(max_length=300, default=None, null=True, blank=True)
    Current_Date = models.DateField(default=datetime.date.today)
    Fee = models.CharField(max_length=100, default=0, null=True, blank=True)
    
    
    visit_start_time = models.TimeField(null=True, blank=True, verbose_name="Visit Start Time")
    visit_end_time = models.TimeField(null=True, blank=True, verbose_name="Visit End Time")
    visit_duration = models.IntegerField(default=30, verbose_name="Duration (minutes)")
    
    def save(self, *args, **kwargs):
        # Auto-calculate end time if start time is provided
        if self.visit_start_time and not self.visit_end_time:
            # Convert start time to datetime, add duration minutes
            start_datetime = datetime.datetime.combine(
                self.Appointment_date if self.Appointment_date else datetime.date.today(), 
                self.visit_start_time
            )
            end_datetime = start_datetime + datetime.timedelta(minutes=self.visit_duration)
            self.visit_end_time = end_datetime.time()
        super().save(*args, **kwargs) 




class AppointmentFee(models.Model):
    VISIT_TYPE_CHOICES = [
        ('Consultation', 'Consultation'),
        ('Followup', 'Followup'),
        ('Revisit', 'Revisit'),
        ('Whatsapp', 'Whatsapp'),
        ('Camp', 'Camp'),
    ]

    branch = models.ForeignKey(Branch, on_delete=models.CASCADE, null=True, blank=True)
    doctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True)
    visit_type = models.CharField(max_length=50, choices=VISIT_TYPE_CHOICES)
    fee_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['branch', 'doctor', 'visit_type']
        unique_together = ['branch', 'doctor', 'visit_type']

    def __str__(self):
        doctor_name = self.doctor.Staff_firstname if self.doctor else "All Doctors"
        branch_name = self.branch.Branch_Name if self.branch else "All Branches"
        return f"{branch_name} - {doctor_name} - {self.visit_type}: ₹{self.fee_amount}"	

class AppointmentEditLog(models.Model):
    ACTION_CHOICES = [
        ("EDIT", "Edit"),
        ("DELETE", "Delete"),
    ]
    
    appointment = models.ForeignKey('Appointments', on_delete=models.SET_NULL, null=True, blank=True)
    action = models.CharField(max_length=10, choices=ACTION_CHOICES)
    
    # Original appointment data (before edit/delete)
    original_token_no = models.CharField(max_length=300, null=True, blank=True)
    original_doctor_id = models.IntegerField(null=True, blank=True)
    original_appointment_date = models.DateField(null=True, blank=True)
    original_status = models.CharField(max_length=100, null=True, blank=True)
    original_contactno = models.CharField(max_length=100, null=True, blank=True)
    original_remark = models.CharField(max_length=300, null=True, blank=True)
    original_fee = models.CharField(max_length=100, default='0', null=True, blank=True)
    
    # New appointment data (after edit - only for EDIT action)
    new_doctor_id = models.IntegerField(null=True, blank=True)
    new_appointment_date = models.DateField(null=True, blank=True)
    new_status = models.CharField(max_length=100, null=True, blank=True)
    new_contactno = models.CharField(max_length=100, null=True, blank=True)
    new_remark = models.CharField(max_length=300, null=True, blank=True)
    new_fee = models.CharField(max_length=100, default='0', null=True, blank=True)
    
    # Log metadata
    staff = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True, blank=True)
    branch = models.ForeignKey('Branch', on_delete=models.SET_NULL, null=True, blank=True)
    action_date = models.DateField(default=timezone.now)
    action_time = models.TimeField(default=timezone.now)
    
    def __str__(self):
        return f"{self.action} - Appointment on {self.action_date}"



class Ratemaster(models.Model):
    status = models.CharField(max_length=200)
    rate = models.DecimalField(max_digits=10, decimal_places=2)




class appointmentinvoicemaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    payementmode=models.CharField(max_length = 300,default="Cash", null=True, blank=True)

    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    treatmentInvoicenumber = models.CharField(max_length=400, default=None)
    currentdate = models.DateField()
    subtotal = models.FloatField()
    tax = models.FloatField()
    shipping = models.FloatField()
    total = models.FloatField()
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    consultationfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultationfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    cancelstatus=models.BooleanField(default=False)
    

class Preliminarydata(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Address=models.CharField(max_length = 500,default=None)
    Age=models.CharField(max_length = 100,default=None)
    Gender=models.CharField(max_length = 100,null=True, blank=True)
    # Marital_status=models.CharField(max_length = 100,default=None)
    Place=models.CharField(max_length = 100,default=None)
    Phone_number=models.CharField(max_length = 100,default=None)
    Occupation=models.CharField(max_length = 100,default=None)

class Complaints(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    complaints=models.CharField(max_length = 1000)


class hopresentillness(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    hopresentillnessdetails=models.CharField(max_length = 1000)

class hopastillness(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    hopastillnessdetails=models.CharField(max_length = 1000)


class menustralhistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    menarche=models.CharField(max_length = 800)
    menopauose=models.CharField(max_length = 800)
    bleeding=models.CharField(max_length = 800)
    interval=models.CharField(max_length = 800)
    clots=models.CharField(max_length = 800)
    colour=models.CharField(max_length = 800)
    Complaints=models.CharField(max_length = 800,default=None)

class obstretichistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    gpal=models.CharField(max_length = 1000)
    lma=models.CharField(max_length = 1000)
    edd=models.CharField(max_length = 1000)

class dashvidhpariksha(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    prakriti=models.CharField(max_length = 800)
    vikriti=models.CharField(max_length =800)
    saar=models.CharField(max_length = 800)
    samhanan=models.CharField(max_length = 800)
    satmya=models.CharField(max_length = 800)
    pramana=models.CharField(max_length = 800)
    satva=models.CharField(max_length = 800)
    aharshakti=models.CharField(max_length = 800)
    vyayamshakti=models.CharField(max_length = 800)
    vaya=models.CharField(max_length = 800)


class generalphysicalexamination(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    pulse=models.CharField(max_length = 800)
    temperature=models.CharField(max_length =800)
    bp=models.CharField(max_length = 800)
    weight=models.CharField(max_length = 800)
    bmi=models.CharField(max_length = 800)
    lips=models.CharField(max_length = 800)
    throat=models.CharField(max_length = 800)
    spo2=models.CharField(max_length = 800)
    tooth=models.CharField(max_length = 800,default=None)
    nutriionalstatus=models.CharField(max_length = 800)

class Med_History(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Med_history=models.CharField(max_length = 1000)

class Medication(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Medication=models.CharField(max_length = 1000)

class PersonalHistoryold(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Sleep=models.CharField(max_length = 500)
    Bowels=models.CharField(max_length = 500)
    Appetite=models.CharField(max_length = 500)
    Thirst=models.CharField(max_length = 500)
    Habits=models.CharField(max_length = 500)

class OBGHistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    MenstrualCycle_History=models.CharField(max_length = 500)
    LMP=models.CharField(max_length = 500)
    Painclot=models.CharField(max_length = 500)

class Vitals(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Blood_Pressure=models.CharField(max_length = 500)
    Pulse_rate=models.CharField(max_length = 500)
    Respiratory_rate=models.CharField(max_length = 500)
    Spo=models.CharField(max_length = 500)
    Temperature=models.CharField(max_length = 500)
    Height=models.CharField(max_length = 500)
    Weight=models.CharField(max_length = 500)
    BMI=models.CharField(max_length = 500)
    IBW=models.CharField(max_length = 500)
    Blood_Parameter_Record=models.CharField(max_length = 500)

class DietaryHistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Food_type=models.CharField(max_length = 500)
    Food_Allergy=models.CharField(max_length = 500)
    Likes_dislikes=models.CharField(max_length = 500)
    Home_Recall=models.CharField(max_length = 500)

class systematicExamination(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    sysexamination=models.CharField(max_length = 800)

class Ashtavidhpariksha(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    naadi= models.CharField(max_length = 500,null=True, blank=True)
    mala=models.CharField(max_length = 500,null=True, blank=True)
    mutra=models.CharField(max_length = 500,null=True, blank=True)
    jivha=models.CharField(max_length = 500,null=True, blank=True)
    Shobda=models.CharField(max_length = 500,null=True, blank=True)
    sparsha=models.CharField(max_length = 500,null=True, blank=True)
    drishti=models.CharField(max_length = 500,null=True, blank=True)
    Aakriti=models.CharField(max_length = 500,null=True, blank=True)

class vyadhipariksha(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Nidana=models.CharField(max_length = 500,null=True, blank=True)
    Purvaroopa=models.CharField(max_length = 500,null=True, blank=True)
    Roopa=models.CharField(max_length = 500,null=True, blank=True)
    UpshayaAnupshaya=models.CharField(max_length = 500,null=True, blank=True)
    
class sampraptighataka(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    dosha=models.CharField(max_length = 500 ,null=True, blank=True)
    samuthan=models.CharField(max_length = 500 ,null=True, blank=True)
    adhistana=models.CharField(max_length = 500 ,null=True, blank=True)
    rogmarg=models.CharField(max_length = 500 ,null=True, blank=True)
    dushya=models.CharField(max_length = 500 ,null=True, blank=True)
    srotas=models.CharField(max_length = 500 ,null=True, blank=True)
    srotodushi=models.CharField(max_length = 500 ,null=True, blank=True)

class labinvestigation(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    description=models.CharField(max_length = 500)

class familyHistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    familyhistorydt=models.CharField(max_length = 500)

class personalHistory(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    personalHistorydt=models.CharField(max_length = 500)

class differentialdiagnosis(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    description=models.CharField(max_length = 500)

class treatmentadvised(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    treatmentadviseddescription=models.CharField(max_length = 1000)

class Phy_Sys_Examination(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE,default=None)
    Current_Date= models.DateField(default=datetime.date.today)
    Built=models.CharField(max_length = 500)
    Pallor=models.CharField(max_length = 500)
    Icterus=models.CharField(max_length = 500)
    Edema=models.CharField(max_length = 500)
    Cyanosis=models.CharField(max_length = 500)
    Clubbing=models.CharField(max_length = 500)
    CVS=models.CharField(max_length = 500)
    RS=models.CharField(max_length = 500)
    CNS=models.CharField(max_length = 500)
    Joints=models.CharField(max_length = 500)

class Diagnosis(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Current_Date= models.DateField(default=datetime.date.today)
    description=models.CharField(max_length = 800,default=None)

class Record_Sheet(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Date=models.DateField(default=None)
    Bp=models.CharField(max_length = 500)
    PR_RR=models.CharField(max_length = 500)
    SPO2=models.CharField(max_length = 500)
    TEMP=models.CharField(max_length = 500)
    FPS_PPBS=models.CharField(max_length = 500)

class Treatment_Chart(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Date=models.DateField(default=None)
    EM=models.CharField(max_length = 500)
    Morning=models.CharField(max_length = 500)
    Afternoon=models.CharField(max_length = 500)
    Evening=models.CharField(max_length = 500)
    Night=models.CharField(max_length = 500)

class Diet_Chart(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Date=models.DateField(default=None)
    six_fifteen=models.CharField(max_length = 500)
    eight_thirty=models.CharField(max_length = 500)
    eleven=models.CharField(max_length = 500)
    twelve_thirty=models.CharField(max_length = 500)
    four=models.CharField(max_length = 500)
    six_thirty=models.CharField(max_length = 500)
    bed_time=models.CharField(max_length = 500)

class Prescriptiont(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Current_Date=models.DateField(default=datetime.date.today)
    Medicinebd=models.CharField(max_length = 500)
    occurance1bd=models.CharField(max_length = 500,default=0)
    occurance2bd=models.CharField(max_length = 500,default=0)
    occurance3bd=models.CharField(max_length = 500,default=0)
    occurance4bd=models.CharField(max_length = 500,default=0)
    occurance5bd=models.CharField(max_length = 500,default=0)
    Medicinead=models.CharField(max_length = 500,default=0)
    occurance1ad=models.CharField(max_length = 500,default=0)
    occurance2ad=models.CharField(max_length = 500,default=0)
    occurance3ad=models.CharField(max_length = 500,default=0)
    occurance4ad=models.CharField(max_length = 500,default=0)
    occurance5ad=models.CharField(max_length = 500,default=0)
    Notes=models.CharField(max_length = 800)

class Prescription(models.Model):
    # MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE)
    Current_Date=models.DateField(default=datetime.date.today)
    before_diet_medicine_name=models.CharField(max_length=100)
    before_diet_quantity=models.CharField(max_length = 800)
    after_diet_medicine_name=models.CharField(max_length=100)
    after_diet_quantity=models.CharField(max_length = 800)
    notes=models.CharField(max_length = 800)

class Diet(models.Model):
    name = models.CharField(max_length=200)  # Name of the diet (e.g., Keto, Paleo)
    description = models.TextField(null=True, blank=True)  # Brief description of the diet
    
    created_at = models.DateTimeField(auto_now_add=True)  # Automatically record when the diet is created
    updated_at = models.DateTimeField(auto_now=True)  # Automatically update when changes are made

class medicalfollowup(models.Model):
    currentdate=models.DateField(default=datetime.date.today)
    nextfollowupdate=models.DateField(default=datetime.date.today)
    progressnote=models.TextField(null=True, blank=True) 
    currentsymptioms=models.TextField(null=True, blank=True) 
    followupstaffno = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=1)
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    

class doctorprescription(models.Model):
    Current_Date=models.DateField(default=datetime.date.today)
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    name = models.CharField(max_length=100)
    medicinename=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    dosage=models.CharField(max_length=200)
    direction=models.CharField(max_length=700)

    
class Admin(models.Model):
    username=models.CharField(max_length=100,default=None)
    password=models.CharField(max_length=100,default=None)


class invoicemaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    payementmode=models.CharField(max_length = 300,default="Cash", null=True, blank=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    Invoicenumber = models.CharField(max_length=400, default=None)
    currentdate =models.DateField()
    subtotal = models.FloatField(default=0, null=True, blank=True)
    tax =models.FloatField(default=0, null=True, blank=True)
    shipping =models.FloatField(default=0, null=True, blank=True)
    total = models.FloatField(default=0, null=True, blank=True)
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    consultationfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultationfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    restockstatus= models.BooleanField(default=True)
    totalsgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    totalcgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    totaltaxableamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    cash_amount = models.CharField(max_length=400,default=0, null=True, blank=True)
    gpay_amount = models.CharField(max_length=400,default=0, null=True, blank=True)
    card_amount = models.CharField(max_length=400,default=0, null=True, blank=True)
    # hsncode=models.CharField(max_length=15,default=None,null=True, blank=True)
    # transportationmode=models.CharField(max_length=300,default=None,null=True, blank=True)
    # vehicleno=models.CharField(max_length=200,default=None,null=True, blank=True)
    # dateofsupply=models.CharField(max_length=100,default=None,null=True, blank=True)
    # placeofsupply=models.CharField(max_length=400,default=None,null=True, blank=True)

class supplier(models.Model):
    suppliercode=models.CharField(max_length = 100,default=None,null=True, blank=True)
    shopname=models.CharField(max_length = 300)
    address=models.CharField(max_length = 200)
    email=models.CharField(max_length = 100)
    contactnumber=models.CharField(max_length = 40)
class invoicechild(models.Model):
    quantity=models.IntegerField()
    particulars=models.CharField(max_length=400,default=None)
    amount=models.FloatField()
    sutotal=models.FloatField()
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    currentdate=models.DateTimeField(default=now)
    invoiceno=models.CharField(max_length=100,default=None)
    description=models.CharField(max_length=400,default=None)
    patientname=models.CharField(max_length=400,default=None,null=True, blank=True)
    patientphno=models.CharField(max_length=15,default=None,null=True, blank=True)
    invmasterid=models.ForeignKey(invoicemaster,on_delete=models.CASCADE,null=True, blank=True)
    batchno=models.CharField(max_length=400,default=None,null=True, blank=True)
    expirydate=models.CharField(max_length=400,default=None,null=True, blank=True)
    mfg=models.CharField(max_length=400,default=None,null=True, blank=True)
    unt=models.CharField(max_length=400,default=None)
    hsncode=models.CharField(max_length=400,default=None)
    suppid=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    tax = models.FloatField(default=None)
    taxamount= models.FloatField(default=None)
    baseqty=models.CharField(max_length=400,default=None)
    sgst=models.CharField(max_length=400,default=None,null=True, blank=True)
    cgst=models.CharField(max_length=400,default=None,null=True, blank=True)
    sgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    cgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    taxableamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    

class newInvoiceMaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    payementmode = models.CharField(max_length=300, default="Cash", null=True, blank=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    Invoicenumber = models.CharField(max_length=400, default=None)
    currentdate = models.DateField()
    subtotal = models.FloatField(default=0, null=True, blank=True)
    tax = models.FloatField(default=0, null=True, blank=True)
    shipping = models.FloatField(default=0, null=True, blank=True)
    total = models.FloatField(default=0, null=True, blank=True)
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    consultationfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultationfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    restockstatus = models.BooleanField(default=True)
    totalsgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    totalcgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    totaltaxableamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    cash_amount = models.CharField(max_length=400, default=0, null=True, blank=True)
    gpay_amount = models.CharField(max_length=400, default=0, null=True, blank=True)
    card_amount = models.CharField(max_length=400, default=0, null=True, blank=True)
    discount_percent = models.DecimalField(default=0,decimal_places=2,max_digits=6, null=True, blank=True)
    
class newInvoiceChild(models.Model):
    quantity = models.IntegerField()
    returned_qty = models.IntegerField(default=0)
    particulars = models.CharField(max_length=400, default=None)
    amount = models.FloatField()
    sutotal = models.FloatField()
    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    currentdate = models.DateTimeField(default=now)
    invoiceno = models.CharField(max_length=100, default=None)
    description = models.CharField(max_length=400, default=None)
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    invmasterid = models.ForeignKey(newInvoiceMaster, on_delete=models.CASCADE, null=True, blank=True)
    batchno = models.CharField(max_length=400, default=None, null=True, blank=True)
    expirydate = models.CharField(max_length=400, default=None, null=True, blank=True)
    mfg = models.CharField(max_length=400, default=None, null=True, blank=True)
    unt = models.CharField(max_length=400, default=None)
    hsncode = models.CharField(max_length=400, default=None)
    suppid = models.ForeignKey(supplier, on_delete=models.CASCADE, default=None, null=True, blank=True)
    tax = models.FloatField(default=None)
    taxamount = models.FloatField(default=None)
    baseqty = models.CharField(max_length=400, default=None)
    sgst = models.CharField(max_length=400, default=None, null=True, blank=True)
    cgst = models.CharField(max_length=400, default=None, null=True, blank=True)
    sgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    cgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    taxableamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    manufacturedate = models.CharField(max_length=400, default=None, null=True, blank=True)

    @property
    def remaining_qty(self):
        """Return quantity that can still be credited."""
        return max(self.quantity - self.returned_qty, 0)

    def __str__(self):
        return f"{self.particulars} ({self.quantity})"
    
class triggeraftersalereturn(models.Model):
    quantity=models.IntegerField()
    particulars=models.CharField(max_length=400,default=None)
    amount=models.FloatField()
    sutotal=models.FloatField()
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    currentdate=models.DateField()
    invoiceno=models.CharField(max_length=100,default=None)
    description=models.CharField(max_length=400,default=None)
    patientname=models.CharField(max_length=400,default=None,null=True, blank=True)
    patientphno=models.CharField(max_length=15,default=None,null=True, blank=True)
    invmasterid=models.ForeignKey(invoicemaster,on_delete=models.CASCADE,null=True, blank=True)
    batchno=models.CharField(max_length=400,default=None,null=True, blank=True)
    expirydate=models.CharField(max_length=400,default=None,null=True, blank=True)
    mfg=models.CharField(max_length=400,default=None,null=True, blank=True)
    unt=models.CharField(max_length=400,default=None)
    hsncode=models.CharField(max_length=400,default=None)
    suppid=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    sales_return = models.BooleanField(default=False)
    return_quantity =models.CharField(max_length=400,default=None,null=True, blank=True)


class creditdetailsmaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    Mrno=models.ForeignKey(Patient_details, on_delete=models.CASCADE,null=True, blank=True)
    currentdate=models.DateField()
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    crno=models.CharField(max_length=400,default=None)
    invmsid=models.ForeignKey(invoicemaster, on_delete=models.CASCADE, default=None, null=True)
    subtotal = models.FloatField(default=None)
    totalamount=models.CharField(max_length=400,default=None)
    tax = models.CharField(max_length=400,default=None)

class creditdetailschild(models.Model):	
    crno=models.ForeignKey(creditdetailsmaster, on_delete=models.CASCADE, default=None, null=True)
    particulars=models.CharField(max_length=400,default=None)
    medid=models.ForeignKey(medicinemaster, on_delete=models.CASCADE, default=None, null=True)
    invmsid=models.ForeignKey(invoicemaster, on_delete=models.CASCADE, default=None, null=True)
    returnqty=models.CharField(max_length=400,default=None)
    medcompany=models.ForeignKey(Comapany, on_delete=models.CASCADE, default=None, null=True)
    amount=models.FloatField()
    sutotal=models.FloatField()
    currentdate=models.DateField(default=None)
    description=models.CharField(max_length=400,default=None)
    unt=models.CharField(max_length=400,default=None)
    suppid=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)

class status(models.Model):
    stype=models.CharField(max_length=200,default=None)



class sourcedetails(models.Model):
    sourcename=models.CharField(max_length=200,default=None)
    details=models.CharField(max_length=200,default=None)
    status=models.BooleanField(default=True)
    deleted = models.BooleanField(default=False)  # Soft delete flag
    deleted_date = models.DateField(null=True, blank=True)  # Date of deletion
    def soft_delete(self):
        """Soft delete the Patient by setting deleted to True and logging the deletion date."""
        self.deleted = True
        self.deleted
class enquiry(models.Model):
    
    name=models.CharField(max_length=200,default=None)
    age=models.CharField(max_length=10,default=None)
    complaint=models.CharField(max_length=300,default=None)
    Phone_number=models.CharField(max_length=15,default=None)
    currentdate=models.DateField()
    callormsg=models.CharField(max_length=200,default=None)
    sourrcdts=models.ForeignKey(sourcedetails, on_delete=models.CASCADE,default="1")
    status=models.CharField(max_length=200,default="Pending")
    predpaidby=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default="1")
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE,default="1")
    language = models.CharField(max_length=800, default="English")
    deleted = models.BooleanField(default=False)  # Soft delete flag
    deleted_date = models.DateField(null=True, blank=True)  # Date of deletion
    def soft_delete(self):
        """Soft delete the enquiry by setting deleted to True and logging the deletion date."""
        self.deleted = True
        self.deleted_date = timezone.now()
        self.save()
    def restore(self):
        """Restore a soft-deleted enquiry by resetting deleted and deleted_date fields."""
        self.deleted = False
        self.deleted_date = None
        self.save()

class followup(models.Model):
    enqid=models.ForeignKey(enquiry,on_delete=models.CASCADE,default=None)
    followedby=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=None)
    followupdate=models.DateField()
    remainderdate=models.DateField(null=True, blank=True)
    remarks = models.TextField(default=None)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE,default=None,null=True, blank=True)

from django.utils import timezone
class Physicalstockdetails(models.Model):
    storenm = models.ForeignKey(storedetails, on_delete=models.CASCADE, default="1")
    itemnm = models.ForeignKey(medicinemaster, on_delete=models.CASCADE, default=None)
    unt = models.ForeignKey(unitdt, on_delete=models.CASCADE, default=None)
    suppliernm = models.ForeignKey(supplier, on_delete=models.CASCADE, default=None, null=True, blank=True)
    Comapany_name = models.ForeignKey(Comapany, on_delete=models.CASCADE, null=True, blank=True)
    Manufacturer_date = models.DateField(null=True)
    Expiry_date = models.DateField(null=True)
    Batch_no = models.CharField(max_length=500, default=None)
    Rate = models.CharField(max_length=300, default=None)
    wholesale_rate = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)

    purchase_rate = models.DecimalField(max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    qty = models.IntegerField()  # Changed from CharField to IntegerField
    lastupdatedate = models.DateField(default=timezone.now)
    insertedstaffid = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default="1")
    deleted = models.BooleanField(default=False)  # Soft delete flag
    deleted_date = models.DateField(null=True, blank=True)  # Date of deletion
    stockbranch=models.ForeignKey(Branch, on_delete=models.CASCADE, default=None, null=True, blank=True)
    base_quantity = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    base_rate = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_base_quantity = models.DecimalField(max_digits=12, decimal_places=2, default=0,null=True)
    def soft_delete(self, staff):
        """Soft delete the stock by setting deleted to True and logging the deletion."""
        self.deleted = True
        self.deleted_date = timezone.now()
        self.save()

        StockAuditLog.objects.create(
            stock=self,
            action="DELETE",
            staff=staff,
            branch=self.stockbranch,
            store=self.storenm,
            item=self.itemnm,
            qty=self.qty,
            action_date=timezone.now().date(),
            action_time=timezone.now().time(),
        )
    # === Restore method ===
    def restore(self, staff):
        """Restore a soft-deleted stock item."""
        self.deleted = False
        self.deleted_date = None
        self.save()
        StockAuditLog.objects.create(
            stock=self,
            action="RESTORE",
            staff=staff,
            branch=self.stockbranch,
            store=self.storenm,
            item=self.itemnm,
            qty=self.qty,
            action_date=timezone.now().date(),
            action_time=timezone.now().time(),
        )


class StockAuditLog(models.Model):
    ACTION_CHOICES = [
        ("INSERT", "Insert"),
        ("UPDATE", "Update"),
        ("DELETE", "Delete"),
        ("RESTORE", "Restore"),
        ("SALE", "Sale"),
    ]
    stock = models.ForeignKey(Physicalstockdetails, on_delete=models.CASCADE)
    action = models.CharField(max_length=10, choices=ACTION_CHOICES)
    staff = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True)
    branch = models.ForeignKey('Branch', on_delete=models.SET_NULL, null=True)
    store = models.ForeignKey('storedetails', on_delete=models.SET_NULL, null=True)
    item = models.ForeignKey('medicinemaster', on_delete=models.SET_NULL, null=True)
    qty = models.IntegerField(null=True, blank=True)
    action_date = models.DateField(default=timezone.now)
    action_time = models.TimeField(default=timezone.now)

    remarks = models.TextField(blank=True, null=True)
    def formatted_time(self):
        """Returns time in HH:MM AM/PM format (e.g., 1:56 PM)."""
        return self.action_time.strftime("%I:%M %p")
    def __str__(self):
        return f"{self.action} - {self.item} by {self.staff} on {self.action_date} at {self.formatted_time()}"

# class Physicalstockdetails(models.Model):
# 	storenm = models.ForeignKey(storedetails, on_delete=models.CASCADE, default="1")
# 	itemnm = models.ForeignKey(medicinemaster, on_delete=models.CASCADE, default=None)
# 	unt = models.ForeignKey(unitdt, on_delete=models.CASCADE, default=None)
# 	suppliernm = models.ForeignKey(supplier, on_delete=models.CASCADE, default=None, null=True, blank=True)
# 	Comapany_name = models.ForeignKey(Comapany, on_delete=models.CASCADE, null=True, blank=True)
# 	Manufacturer_date = models.DateField(null=True)
# 	Expiry_date = models.DateField(null=True)
# 	Batch_no = models.CharField(max_length=500, default=None)
# 	Rate = models.CharField(max_length=300, default=None)
# 	qty =models.IntegerField()
# 	# models.CharField(max_length=100, default=None)
# 	lastupdatedate = models.DateField(default=datetime.date.today)
# 	insertedstaffid = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default="1")
    # storenm=models.ForeignKey(storedetails,on_delete=models.CASCADE,default="1")
    # itemnm=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    # unt=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    # suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    # Comapany_name=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    # Manufacturer_date=models.DateField(null=True)
    # Expiry_date=models.DateField(null=True)
    # Batch_no=models.CharField(max_length = 500,default=None)
    # Rate=models.CharField(max_length = 300, default=None)
    # qty=models.CharField(max_length = 100, default=None)
    # lastupdatedate = models.DateField(default=datetime.date.today)
    # insertedstaffid=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default="1")
    

class triggerforstock(models.Model):
    storenm=models.ForeignKey(storedetails,on_delete=models.CASCADE,default="1")
    itemnm=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    unt=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    Comapany_name=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    Manufacturer_date=models.DateField(null=True)
    Expiry_date=models.DateField(null=True)
    Batch_no=models.CharField(max_length = 500,default=None)
    Rate=models.CharField(max_length = 300,default=None)
    qty=models.CharField(max_length = 100,default=None)
    lastupdatedate = models.DateField(default=datetime.date.today)
    insertedstaffid=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=1)
    physicalstockid=models.ForeignKey(Physicalstockdetails,on_delete=models.CASCADE,default=1)


class triggerforafterupdatestock(models.Model):
    storenm=models.ForeignKey(storedetails,on_delete=models.CASCADE,default="1")
    itemnm=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    unt=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    Comapany_name=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    Manufacturer_date=models.DateField(null=True)
    Expiry_date=models.DateField(null=True)
    Batch_no=models.CharField(max_length = 500,default=None)
    Rate=models.CharField(max_length = 300,default=None)
    qty=models.CharField(max_length = 100,default=None)
    lastupdatedate = models.DateField(default=datetime.date.today)
    insertedstaffid=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=1)
    physicalstockid=models.ForeignKey(Physicalstockdetails,on_delete=models.CASCADE,default=1)


class stockentryPhysicalstockdetails(models.Model):
    storenm=models.ForeignKey(storedetails,on_delete=models.CASCADE,default="1")
    itemnm=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    unt=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    Comapany_name=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    Manufacturer_date=models.DateField(null=True)
    Expiry_date=models.DateField(null=True)
    Batch_no=models.CharField(max_length = 500,default=None)
    Rate=models.CharField(max_length = 300,default=None)
    qty=models.CharField(max_length = 100,default=None)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    currentdate = models.DateField()


class purchaseorderheader(models.Model):
    putrchaseorderno=models.CharField(max_length = 300,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    orderdate=models.DateField(null=True)
    currentdate = models.DateField()
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    purschaseorderclose=models.BooleanField(default=False)


class purchaseorderchild(models.Model):
    putrchaseorderno=models.CharField(max_length = 300,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    purchaseorderhid=models.ForeignKey(purchaseorderheader,on_delete=models.CASCADE,default=None)
    suppliercontactnumber=models.CharField(max_length = 100,default=None)
    orderdate=models.DateField(null=True)
    itemname=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    itemunit=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    itemquantity=models.CharField(max_length = 300,default=None)
    itemcompany=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    balance=models.CharField(max_length = 300,default=None)
    extraqty=models.CharField(max_length = 300,default=0)
    currentdate = models.DateTimeField(default=timezone.now)


class triggerupdate_purchaseorderchild(models.Model):
    putrchaseorderno=models.CharField(max_length = 300,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    purchaseorderhid=models.ForeignKey(purchaseorderheader,on_delete=models.CASCADE,default=None)
    suppliercontactnumber=models.CharField(max_length = 100,default=None)
    orderdate=models.DateField(null=True)
    itemname=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    itemunit=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    itemquantity=models.CharField(max_length = 300,default=None)
    itemcompany=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    balance=models.CharField(max_length = 300,default=None)
    extraqty=models.CharField(max_length = 300,default=0)
    currentdate = models.DateTimeField(default=timezone.now)

    
class reorderleveldetails(models.Model):
    companyid=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    itemname=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    qty=models.CharField(max_length = 300,default=None)

class grnheader(models.Model):
    grnno=models.CharField(max_length = 300,default=None)
    prchaseorderno=models.CharField(max_length = 300,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    grndate=models.DateField(null=True)
    currentdate=models.DateField(null=True)
    purchaseorderhid=models.ForeignKey(purchaseorderheader,on_delete=models.CASCADE,default=None)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    

class grnchild(models.Model):
    grnhid=models.ForeignKey(grnheader,on_delete=models.CASCADE,default=None)
    suppliernm=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None)
    orderdate=models.DateField(null=True)
    itemname=models.ForeignKey(medicinemaster,on_delete=models.CASCADE,default=None)
    itemunit=models.ForeignKey(unitdt,on_delete=models.CASCADE,default=None)
    grnnumber=models.CharField(max_length = 300,default=None)
    purchaseorderitemqty=models.CharField(max_length = 300,default=None)
    receivedqty=models.CharField(max_length = 300,default=None)
    mdate=models.DateField(null=True, blank=True)
    exdate=models.DateField(null=True, blank=True)
    itemcompany=models.ForeignKey(Comapany,on_delete=models.CASCADE,null=True, blank=True)
    batchno=models.CharField(max_length = 300,default=None)
    rate=models.CharField(max_length = 300,default=None)
    purchase_rate = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    close=models.BooleanField(default=False)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    
    
class treatmentinvoicemaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    treatmentInvoicenumber = models.CharField(max_length=400, default=None)
    currentdate = models.DateField()
    subtotal = models.FloatField()
    tax = models.FloatField()
    shipping = models.FloatField()
    total = models.FloatField()
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    consultationfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultationfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    cancelstatus=models.BooleanField(default=False)
    paymentmode = models.CharField(max_length=300, default="Cash", null=True, blank=True)

class treatmentinvoicechild(models.Model):
    quantity=models.IntegerField()
    particulars=models.CharField(max_length=400,default=None)
    amount=models.FloatField()
    sutotal=models.FloatField()
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    currentdate=models.DateField()
    invoiceno=models.CharField(max_length=100,default=None)
    description=models.CharField(max_length=400,default=None)
    patientname=models.CharField(max_length=400,default=None,null=True, blank=True)
    patientphno=models.CharField(max_length=15,default=None,null=True, blank=True)
    invmasterid=models.ForeignKey(treatmentinvoicemaster,on_delete=models.CASCADE,null=True, blank=True)
    
class menuheadingdetails(models.Model):
    icon=models.CharField(max_length=400,default=None)
    menuheadingname=models.CharField(max_length=400,default=None)
    status= models.BooleanField(default=False)


class menudetails(models.Model):
    icon=models.CharField(max_length=400,default=None)
    menuname=models.CharField(max_length=400,default=None)
    menuheadingname=models.ForeignKey(menuheadingdetails,on_delete=models.CASCADE)
    link=models.CharField(max_length=400,default=None)
    status= models.BooleanField(default=False)

class Role(models.Model):
    rolename=models.CharField(max_length=400,default=None)
    status= models.BooleanField(default=True)

class Roleassign(models.Model):
    roleid=models.ForeignKey(Role,on_delete=models.CASCADE,default=None)
    Staff=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=None)
    Branch_Name=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None)
    status= models.BooleanField(default=False)

class dashboardesign(models.Model):
    dashboardname=models.CharField(max_length=400,default=None)
    color=models.CharField(max_length=20,default=None)
    linkname=models.CharField(max_length=400,default=None)
    status= models.BooleanField(default=True)

class dashboardallocation(models.Model):
    roleid=models.ForeignKey(Role,on_delete=models.CASCADE,default=None)
    dashboardid=models.ForeignKey(dashboardesign,on_delete=models.CASCADE,default=None)
    status=models.CharField(max_length=400,default=None)
    ordering = models.PositiveIntegerField(default=0)  # Track order of selection
    
class menumanagement(models.Model):
    roleid=models.ForeignKey(Role,on_delete=models.CASCADE,default=None)
    menuid=models.ForeignKey(menudetails,on_delete=models.CASCADE,default=None)
    add=models.CharField(max_length=400,default=None)
    view=models.CharField(max_length=400,default=None)
    edit=models.CharField(max_length=400,default=None)
    delete=models.CharField(max_length=400,default=None)
    

class dailyreportforop(models.Model):
    currentdate = models.DateField()
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    particular=models.CharField(max_length=400,default=None)
    value=models.CharField(max_length=400,default=None)
    normal_value=models.CharField(max_length=400,default=None,null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    iporopstatus=models.CharField(max_length=400,default='op')
    dateofvitals=models.DateField(default=None,null=True, blank=True)

class consultationinvdetails(models.Model):
    currentdate = models.DateField()
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE,default=None)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE,default=None)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE,default=None,null=True)
    tax = models.FloatField()
    total = models.FloatField()
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    consultfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consltinvno= models.CharField(max_length=400,default=None)
    cancelinvoicestatus=models.BooleanField(default=False)


class InvoiceErrorLog(models.Model):
    error_message = models.TextField()
    timestamp = models.DateTimeField(default=now)
    related_invoice = models.CharField(max_length=50, null=True, blank=True)  # Store the related invoice number if available
    staff_id = models.CharField(max_length=50, null=True, blank=True)  # Store the ID of the staff member involved
    def __str__(self):
        return f"Error on {self.timestamp}: {self.error_message}"
    
class StockEditLogtabl(models.Model):
    editstaffno = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=1)
    item_id = models.IntegerField()
    quantity_before = models.IntegerField()
    quantity_after = models.IntegerField()
    edit_time = models.DateTimeField(auto_now_add=True)
    current_date = models.DateField()
    def __str__(self):
        return f"Log for Item ID {self.item_id} by Staff ID {self.insertedstaffid.id} on {self.edit_time}"

class casehistrypersonalinfo(models.Model):
    age = models.IntegerField(default=0)  # IntegerField for age, defaults to 0
    weight = models.FloatField(default=0.0)  # FloatField for weight, defaults to 0.0
    height = models.FloatField(default=0.0, blank=True)
    mrno = models.CharField(max_length=400, unique=True, default=None)  # Add unique constraint here

class casemedicalreport(models.Model):
    mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    drugHistory = models.CharField(max_length=1000, default=None)
    historyofpresentcomplaint = models.CharField(max_length=1000, default=None)
    finaldiagnosis = models.CharField(max_length=800, default=None)
    testneeded = models.CharField(max_length=600, default=None)
    Current_Date=models.DateField(default=datetime.date.today)
    
class MedicalReportFile(models.Model):
    report = models.ForeignKey(casemedicalreport, related_name='files', on_delete=models.CASCADE)
    file = models.FileField(upload_to='uploads/')
    Current_Date=models.DateField(default=datetime.date.today)

class NexDoctorPrescription(models.Model):
    current_date = models.DateField(default=datetime.date.today)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    complaint = models.CharField(max_length=700)
    dietid = models.ForeignKey(Diet, on_delete=models.CASCADE, null=True, blank=True,default="1")
    note = models.TextField(default="", blank=True)

    def __str__(self):
        return f"Prescription for {self.patient} on {self.current_date}"
class MedicationEntry(models.Model):
    prescription = models.ForeignKey(NexDoctorPrescription, on_delete=models.CASCADE, related_name="medications")
    medicinename = models.ForeignKey(medicinemaster, on_delete=models.SET_NULL, null=True, blank=True)
    ex_stock_medicinename = models.CharField(max_length=100, blank=True, null=True)  # For free-text entry of ex-stock medicines
    count = models.PositiveIntegerField()
    dosage = models.CharField(max_length=200)
    direction = models.CharField(max_length=700, blank=True)

    def is_ex_stock(self):
        # Returns True if this is an ex-stock medication
        return bool(self.ex_stock_medicinename) and not bool(self.medicinename)

    def __str__(self):
        # Display either the regular medicinename or the ex_stock_medicinename
        return self.medicinename.name if self.medicinename else self.ex_stock_medicinename

class Treatment(models.Model):
    tratmntid = models.CharField(max_length=100)
    treatment_details = models.TextField()
    handledby = models.ManyToManyField(Staffdetails, related_name='treatments_handled')
    givenby = models.ManyToManyField(Staffdetails, related_name='treatments_given')
    mr_number = models.CharField(max_length=100)
    patient_name = models.CharField(max_length=200)
    room_no = models.CharField(max_length=10)
    
class casehistoryErrorLog(models.Model):
    error_message = models.TextField()
    Current_Date=models.DateField(default=datetime.date.today)
    related_mrno = models.CharField(max_length=50, null=True, blank=True)  # Store the related invoice number if available
    staff_id = models.CharField(max_length=50, null=True, blank=True)  # Store the ID of the staff member involved
    def __str__(self):
        return f"Error on {self.timestamp}: {self.error_message}"
        
   
class clairvedaCaseHistory(models.Model):
    STATUS_CHOICES = [
        ('Consultation', 'Consultation'),
        ('Followup', 'Follow Up')
    ]
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='case_histories')
    assigned_doctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True)
    status = models.CharField(max_length=20, choices=STATUS_CHOICES)
    chief_complaint = models.CharField(max_length=255)
    present_complaint = models.TextField()
    final_diagnosis = models.CharField(max_length=255)
    branchcasehstry=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    follow_up_date = models.DateField(null=True, blank=True)
    created_at = models.DateField(default=datetime.date.today)
    prepairedby = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1", related_name='prepaidstaff')
    deletestatus=models.BooleanField(default=False)
    def __str__(self):
        return f"Case for {self.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"
class clairvedaFollowUp(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='follow_ups')
    notes = models.TextField(blank=True)
    created_at = models.DateField(auto_now_add=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    def __str__(self):
        return f"Follow-up for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"
            
class casehistorydoctorsnote(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='doctorsnote', null=True, blank=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    notes = models.TextField(blank=True)
    created_at = models.DateField(auto_now_add=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    def __str__(self):
        return f"doctors Note for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"
    

class casehistorytreatmentplan(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='casetreatmntplan', null=True, blank=True)
    followup = models.ForeignKey(clairvedaFollowUp, on_delete=models.CASCADE, null=True, blank=True, related_name='tratfollowp')  # Optional link to a follow-up
    
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    treatment = models.ForeignKey(Treatment_master, on_delete=models.CASCADE, related_name='trmntplan')
    date=models.DateField(auto_now_add=True)
    count= models.CharField(max_length=100,null=True, blank=True)
    created_at = models.DateField(auto_now_add=True)
    prepairedby = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    deletedstatus = models.BooleanField(default=False)
    def __str__(self):
        return f"doctors Note for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"

class casehistorydietplan(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='casehistdietplan', null=True, blank=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    diet =models.ForeignKey(Diet, on_delete=models.CASCADE, null=True, blank=True)
    created_at = models.DateField(auto_now_add=True)
    noofdays=  models.CharField(max_length=100,null=True, blank=True)
    foodtobeavoided= models.TextField(blank=True,null=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    def __str__(self):
        return f"diet  for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"

class labtestmaster(models.Model):
    groupname=models.CharField(max_length = 300)
    status = models.BooleanField(default=True)
    rate=models.CharField(max_length = 300, null=True, blank=True)
    

class labtestchild(models.Model):
    group=models.ForeignKey(labtestmaster,on_delete=models.CASCADE, null=True, blank=True)
    status = models.BooleanField(default=True)
    testname= models.TextField(blank=True, null=True)
    symbol=models.CharField(max_length = 300, null=True, blank=True)
    rate=models.CharField(max_length = 300, null=True, blank=True)

class labunitmaster(models.Model):
    unit=models.CharField(max_length = 300, null=True, blank=True)
    status = models.BooleanField(default=True)
    
class NormalValueMaster(models.Model):
    testchild = models.ForeignKey('labtestchild', on_delete=models.CASCADE, null=True, blank=True)
    gender = models.CharField(max_length=20, null=True, blank=True)
    age_from = models.DecimalField(max_digits=5, decimal_places=1, null=True, blank=True)
    age_to = models.DecimalField(max_digits=5, decimal_places=1, null=True, blank=True)
    unit = models.ForeignKey('labunitmaster', on_delete=models.SET_NULL, null=True, blank=True)

    min_value = models.DecimalField(max_digits=10, decimal_places=2)
    max_value = models.DecimalField(max_digits=10, decimal_places=2)

    status = models.BooleanField(default=True)

    def __str__(self):
        return f"{self.testchild} – {self.gender}"

# Invoice models
class LabInvoiceMaster(models.Model):
    invoiceno = models.CharField(max_length=100, unique=True)
    date = models.DateField(auto_now_add=True)
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0.00)
    tax_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    discount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    consultation_fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    registration_fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    created_by =  models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True)
    cash_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    gpay_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    card_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    credit_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)   
    payment_status = models.CharField(max_length=20, default="Paid")  # Paid / Credit / Partial
    is_credit = models.BooleanField(default=False)
    is_cancelled = models.BooleanField(default=False)
    cancelled_by = models.ForeignKey('Staffallocation', on_delete=models.SET_NULL, null=True, blank=True, related_name='cancelled_casuality_invoices')
    cancelled_at = models.DateTimeField(null=True, blank=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,null=True)
    result = models.ForeignKey('LabResultMaster',on_delete=models.PROTECT,null=True)
    def __str__(self):
        return self.invoiceno

class LabInvoiceChild(models.Model):
    invoice = models.ForeignKey(LabInvoiceMaster, on_delete=models.CASCADE, related_name='lines')
    sl_no = models.PositiveIntegerField()
    testname = models.CharField(max_length=300)
    qty = models.DecimalField(max_digits=8, decimal_places=2, default=1)
    rate = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    test =models.ForeignKey('labtestchild',on_delete=models.CASCADE,null=True)
    group = models.ForeignKey('labtestmaster',on_delete=models.CASCADE,null=True)
    
class casehistorylabbill(models.Model):
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
    total_amount = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    created_at = models.DateTimeField(default=timezone.now)
    preparedby = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True)
    def __str__(self):
        return f"Lab Bill - {self.patient.Patient_Name} - ₹{self.total_amount}"    


class LabResultMaster(models.Model):
    """
    Master table for lab results - groups results by invoice/requisition
    """
    result_number = models.CharField(max_length=50, unique=True, blank=True, null=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='lab_result_masters')
    invoice = models.ForeignKey('LabInvoiceMaster', on_delete=models.CASCADE, null=True, blank=True, related_name='result_masters')
    requisition = models.ForeignKey('LabRequisitionMaster', on_delete=models.CASCADE, null=True, blank=True, related_name='result_masters')
    
    # Status fields
    is_completed = models.BooleanField(default=False)
    completed_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True, related_name='completed_results')
    completed_date = models.DateTimeField(null=True, blank=True)
    
    # Audit fields
    created_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True, related_name='created_result_masters')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    notes = models.TextField(blank=True)
    
    def __str__(self):
        return f"{self.result_number or 'New'} - {self.patient.Patient_Name}"
    
class casehistorylabresult(models.Model):
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    labtest = models.ForeignKey(labtestchild, on_delete=models.CASCADE)  
    result_value = models.CharField(max_length=200, null=True, blank=True)
    normal_value = models.CharField(max_length=200, null=True, blank=True)
    report_file = models.FileField(upload_to="lab_results/", null=True, blank=True)
    created_at = models.DateTimeField(default=timezone.now)
    preparedby = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True)
    labtestdate = models.DateField(null=True, blank=True)
    bill = models.ForeignKey(LabInvoiceMaster, on_delete=models.CASCADE, null=True, blank=True)
    result_master = models.ForeignKey('LabResultMaster', on_delete=models.CASCADE, null=True, blank=True, related_name='result_items')
    result = models.CharField(max_length=200, null=True, blank=True)
    def __str__(self):
        return f"{self.labtest.testname} - {self.result_value} ({self.patient.Patient_Name})"
    
class LabRequisitionMaster(models.Model):
    """
    Master table for lab requisition - connects to existing casehistorylabtestrequisition child
    """
    requisition_number = models.CharField(max_length=50, unique=True, blank=True, null=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='lab_requisition_masters')
    invoice = models.ForeignKey('LabInvoiceMaster', on_delete=models.CASCADE, null=True, blank=True)
    
    # Status fields
    is_cancelled = models.BooleanField(default=False)
    cancelled_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True, related_name='cancelled_requisitions')
    cancelled_date = models.DateTimeField(null=True, blank=True)
    cancellation_reason = models.TextField(blank=True)
    
    # Audit fields
    created_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True, related_name='created_requisitions')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True, related_name='updated_requisitions')
    updated_at = models.DateTimeField(auto_now=True)
    
    notes = models.TextField(blank=True)
    
    def __str__(self):
        return f"{self.requisition_number or 'New'} - {self.patient.Patient_Name}"
    
class casehistorylabtestrequisition(models.Model):
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='casehistlabtest', null=True, blank=True)
    labtestchild = models.ForeignKey(labtestchild, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True)
    invoice = models.ForeignKey('LabInvoiceMaster',on_delete=models.CASCADE, null=True, blank=True)
    requisition_master = models.ForeignKey('LabRequisitionMaster', on_delete=models.CASCADE, null=True, blank=True, related_name='requisition_items')
    labtestgroup  =models.ForeignKey('labtestmaster',on_delete=models.CASCADE, null=True, blank=True)
    def __str__(self):
        return f"Lab Test for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"

class casehistorymedicalandsurgicalhistory(models.Model):
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE,default="1")
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='casehistory', null=True, blank=True)
    medicalhistory = models.TextField(blank=True)
    surgicalhist= models.TextField(blank=True)
    created_at = models.DateField(auto_now_add=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    def __str__(self):
        return f"diet  for {self.case_history.patient.name} ({self.created_at.strftime('%Y-%m-%d')})"

class casehistryvitals(models.Model):
    mrno = models.ForeignKey(
        Patient_details, 
        on_delete=models.CASCADE, 
        null=True, 
        blank=True
    )  # Link to patient
    age = models.IntegerField(null=True, blank=True, default=0)
    weight = models.FloatField(null=True, blank=True, default=0.0)
    height = models.FloatField(null=True, blank=True, default=0.0)
    bmi = models.FloatField(null=True, blank=True, default=0.0)
    bp = models.CharField(max_length=20, null=True, blank=True)  # store as string "120/80"
    fbs = models.FloatField(null=True, blank=True, default=0.0)
    ppbs = models.FloatField(null=True, blank=True, default=0.0)
    hba1c = models.FloatField(null=True, blank=True, default=0.0)
    tchol = models.FloatField(null=True, blank=True, default=0.0)
    hdl = models.FloatField(null=True, blank=True, default=0.0)
    tg = models.FloatField(null=True, blank=True, default=0.0)
    ldl = models.FloatField(null=True, blank=True, default=0.0)
    s_creatinine = models.FloatField(null=True, blank=True, default=0.0)
    uric_acid = models.FloatField(null=True, blank=True, default=0.0)
    sgpt = models.FloatField(null=True, blank=True, default=0.0)
    sgot = models.FloatField(null=True, blank=True, default=0.0)
    alcohol = models.BooleanField(default=False)  # True if history of alcoholism
    smoking = models.BooleanField(default=False)  # True if smoker
    created_at = models.DateTimeField(auto_now_add=True)
    handledbystaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    pr = models.CharField(max_length=20, null=True, blank=True)  # Pulse Rate
    spo2 = models.CharField(max_length=20, null=True, blank=True)  # SPO2
    temperature = models.CharField(max_length=20, null=True, blank=True)


class Prescriptionnew(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory,on_delete=models.CASCADE, related_name='prescriptionnew', null=True, blank=True)
    followup = models.ForeignKey(clairvedaFollowUp, on_delete=models.CASCADE, null=True, blank=True, related_name='prescriptionnew')  # Optional link to a follow-up
    prescriptiondate= models.DateField(default=datetime.date.today)
    medicine_name = models.CharField(max_length=100)
    physicalstock=models.ForeignKey(Physicalstockdetails,on_delete=models.CASCADE,null=True, blank=True)
    prescribeddoctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    moringtime=models.CharField(max_length=100)
    noontime=models.CharField(max_length=100)
    nighttime=models.CharField(max_length=100)
    beforeorafterdiet=models.CharField(max_length=100)
    medicineguideline=models.CharField(max_length=400)
    noofdays=models.CharField(max_length=400,null=True, blank=True)
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='ptid')
    completed=models.BooleanField(default=False)
    qtyprescriped= models.IntegerField(null=True, blank=True, default=1)
    deletedstatus = models.BooleanField(default=False)
    def __str__(self):
        return f"{self.medicine_name} ({self.case_history.patient.name})"  
    
class casehistoryresultReport(models.Model):
    casehistory = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='caseresultreports')
    file = models.FileField(upload_to='casehistory_reports/')
    uploaded_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f"Report for {self.case_history.patient.name} ({self.uploaded_at.strftime('%Y-%m-%d')})"

class clairvedcasehistrypersonalinfo(models.Model):
    age = models.IntegerField(null=True, blank=True,default=0)  # IntegerField for age, defaults to 0
    weight = models.FloatField(null=True, blank=True,default=0.0)  # FloatField for weight, defaults to 0.0
    height = models.FloatField(null=True, blank=True,default=0.0)
    mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)# Add unique constraint here
    clrcasehistory = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE)
    
class clairvedaFollowUpReport(models.Model):
    follow_up = models.ForeignKey(clairvedaFollowUp,on_delete=models.CASCADE, related_name='reports')
    file = models.FileField(upload_to='followup_reports/')
    uploaded_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f"Report for {self.follow_up.case_history.patient.name} ({self.uploaded_at.strftime('%Y-%m-%d')})"
class clairvedaPrescription(models.Model):
    case_history = models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, related_name='prescriptions')
    followup = models.ForeignKey(clairvedaFollowUp, on_delete=models.CASCADE, null=True, blank=True, related_name='prescriptions')  # Optional link to a follow-up
    prescriptiondate= models.DateField(default=datetime.date.today)
    medicine_name = models.CharField(max_length=100)
    physicalstock=models.ForeignKey(Physicalstockdetails,on_delete=models.CASCADE,null=True, blank=True)
    count = models.IntegerField()
    prescribeddoctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True,default="1")
    dosage = models.CharField(max_length=50, choices=[
        ('OD', 'Once a Day'),
        ('BD', 'Twice a Day'),
        ('TD', 'Three times a Day'),
        ('Other', 'Other')
    ])
    def __str__(self):
        return f"{self.medicine_name} ({self.case_history.patient.name})"   
class followupcalldetails(models.Model):
    enqid=models.ForeignKey(enquiry,on_delete=models.CASCADE,default=None)
    followedby=models.ForeignKey(Staffdetails,on_delete=models.CASCADE,default=None)
    currentdate=models.DateField()
    callorstatus=models.TextField(default=None)
    status = models.TextField(default=None)
    


class nextreatmentdetailsmaster(models.Model):
    Current_Date = models.DateField(default=datetime.date.today)
    MR_Number = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)  # Links to a patient
    room_no = models.CharField(max_length=700)  # Room where treatment occurred
    prepairedstaff = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, null=True, blank=True)
    branchstff=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    casehistoryid=models.ForeignKey(clairvedaCaseHistory, on_delete=models.CASCADE, null=True, blank=True) 


class nextreatmentdetailschild(models.Model):
    treatmenttime= models.TextField(default=None, null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    treatment_date=models.DateField(default=datetime.date.today)
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    nexmaster=models.ForeignKey(nextreatmentdetailsmaster,on_delete=models.CASCADE, null=True, blank=True)
    tratmntid=models.ForeignKey(Treatment_master,on_delete=models.CASCADE, null=True, blank=True)
    handled_by = models.TextField(default=None)# Store handled by staff IDs as a comma-separated string
    given_by = models.TextField(default=None)     # Store given by staff IDs as a comma-separated string
    deletedstatus = models.BooleanField(default=False)
    def get_handled_by_names(self):
        """Retrieve staff names for handled_by field (which stores Staffallocation IDs)."""
        if self.handled_by:
            ids = [int(id) for id in self.handled_by.split(',') if id.isdigit()]
            staff_allocations = Staffallocation.objects.filter(id__in=ids).select_related('Staff')
            return ', '.join([f"{alloc.Staff.Staff_firstname} {alloc.Staff.Staff_lastname}" for alloc in staff_allocations])
        return ''
    def get_given_by_names(self): 
        """Retrieve staff names for given_by field (which stores Staffallocation IDs)."""
        if self.given_by:
            ids = [int(id) for id in self.given_by.split(',') if id.isdigit()]
            staff_allocations = Staffallocation.objects.filter(id__in=ids).select_related('Staff')
            return ', '.join([f"{alloc.Staff.Staff_firstname} {alloc.Staff.Staff_lastname}" for alloc in staff_allocations])
        return ''




class ippatientadmission(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    bloodgroup= models.TextField(default=None,null=True, blank=True)
    address= models.TextField(default=None,null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    age= models.CharField(max_length=100)
    contactnumber= models.CharField(max_length=100,default=None, null=True, blank=True)
    reasonforadmission= models.TextField(default=None, null=True, blank=True)
    Admittedstatus=models.BooleanField(default=True)
    admittedbranch=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    ipnumber=models.CharField(max_length=100,default=None, null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)
# class IPPackageextend(models.Model):
# 	admission = models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True, blank=True)
# 	mr_number = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
# 	package_id = models.ForeignKey('PackageMaster', on_delete=models.SET_NULL, null=True, blank=True)
# 	total_extendepackageamount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00) 
# 	status= models.CharField(max_length=100,default="pending")
# 	start_date = models.DateField(null=True, blank=True)
# 	end_date = models.DateField(null=True, blank=True)
# 	dueofextend= models.DecimalField(max_digits=10, decimal_places=2, default=0.00) 
# 	amountpaidonextend= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
# class IPPackagePayment(models.Model):
# 	admission = models.ForeignKey(ippatientadmission, related_name='payments', on_delete=models.CASCADE)
# 	discount= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
# 	payment_date = models.DateField(default=datetime.date.today)
# 	start_date = models.DateField(null=True, blank=True)
# 	end_date = models.DateField(null=True, blank=True)
# 	amount_paid = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
# 	total_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)  # ← total package amount
# 	due_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
# 	bystander_payment = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
# 	mr_number = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
# 	package_id = models.ForeignKey('PackageMaster', on_delete=models.SET_NULL, null=True, blank=True)
    
    
    
    
    
class ippatientroombooking(models.Model):
    ipno=models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True,default=None, blank=True)
    Admission_Date=models.DateField(default=datetime.date.today)
    admissionenddate=models.DateField(default=datetime.date.today)
    admissiontime=  models.TimeField()
    emergencycontact= models.CharField(max_length=100)
    admitteddepartmnt=models.ForeignKey(Department,on_delete=models.CASCADE, null=True, blank=True)
    admitteddoctor=models.ForeignKey(Staffallocation,on_delete=models.CASCADE, null=True, blank=True)
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    branchdt=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    roomdt=models.ForeignKey(Room_details,on_delete=models.CASCADE, null=True, blank=True)
    accommodation_type = models.CharField(max_length=10,default=None, null=True, blank=True)
    room_type = models.CharField(max_length=20, blank=True, null=True)
    room_number = models.ForeignKey(Room_details, on_delete=models.SET_NULL, null=True, blank=True, related_name="room_number")
    bed_number = models.ForeignKey(Room_details, on_delete=models.SET_NULL, null=True, blank=True, related_name="bed_number")
    floor_number = models.CharField(max_length=20, blank=True, null=True)
    bookingcancel= models.BooleanField(default=False)
    def __str__(self):
        return f"Patient {self.patient_id} - {self.accommodation_type} - Floor {self.floor_number}"


class iptreatmentdetails(models.Model):
    treatmenttime= models.TextField(default=None, null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    treatment_date=models.DateField(default=datetime.date.today)
    treatmentcount= models.TextField(default=None, null=True, blank=True)
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    ipno=models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True, blank=True)
    tratmntid=models.ForeignKey(Treatment_master,on_delete=models.CASCADE, null=True, blank=True)
    handled_by = models.TextField(default=None)# Store handled by staff IDs as a comma-separated string
    given_by = models.TextField(default=None)     # Store given by staff IDs as a comma-separated string
    deletedstatus = models.BooleanField(default=False)
    def get_handled_by_staffnames(self):
        """Retrieve staff names for handled_by field (which stores Staffallocation IDs)."""
        if self.handled_by:
            ids = [int(id) for id in self.handled_by.split(',') if id.isdigit()]
            staff_allocations = Staffallocation.objects.filter(id__in=ids).select_related('Staff')
            return ', '.join([f"{alloc.Staff.Staff_firstname} {alloc.Staff.Staff_lastname}" for alloc in staff_allocations])
        return ''
    def get_given_by_staffnames(self): 
        """Retrieve staff names for given_by field (which stores Staffallocation IDs)."""
        if self.given_by:
            ids = [int(id) for id in self.given_by.split(',') if id.isdigit()]
            staff_allocations = Staffallocation.objects.filter(id__in=ids).select_related('Staff')
            return ', '.join([f"{alloc.Staff.Staff_firstname} {alloc.Staff.Staff_lastname}" for alloc in staff_allocations])
        return ''

class ipdailymedicine(models.Model):
    Current_Date=models.DateField(default=datetime.date.today)
    medicinegiventime= models.TextField(default=None, null=True, blank=True)
    medicinename=models.ForeignKey(medicinemaster,on_delete=models.CASCADE, default=None,null=True, blank=True)
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    ipno=models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True, blank=True)
    count= models.TextField(default=None, null=True, blank=True)
    dosage= models.TextField(default=None, null=True, blank=True)
    physicalstock = models.ForeignKey(Physicalstockdetails, on_delete=models.CASCADE, null=True, blank=True)


    
class PatientDischarge(models.Model):
    ipptno = models.ForeignKey(ippatientadmission, on_delete=models.CASCADE, default=None, null=True, blank=True)
    treatment_summary = models.TextField()
    discharged_date = models.DateField()
    dischargedstaff = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, null=True, blank=True)
    next_checkup_date = models.DateField(null=True, blank=True)
    additional_notes = models.TextField(null=True, blank=True)
    sfirst_name = models.CharField(max_length=100, default=None)
      # New Field
    condition_on_discharge = models.TextField(null=True, blank=True)  # New Field
    accomadationtype = models.TextField(default=None, null=True, blank=True)
    roomno=  models.TextField(default=None, null=True, blank=True)
    bedno=  models.TextField(default=None, null=True, blank=True)
    floorno = models.TextField(default=None, null=True, blank=True)
    # admittedroomdt = models.ForeignKey(ippatientroombooking, on_delete=models.CASCADE, default=None,null=True, blank=True)

class AdviceOnDischarge(models.Model):
    discharge = models.ForeignKey(PatientDischarge, on_delete=models.CASCADE, related_name='advices')
    advice_text = models.TextField()

    def __str__(self):
        return f"Advice for Discharge {self.discharge.id}"

class DischargeMedicationProcedure(models.Model):
    discharge = models.ForeignKey(PatientDischarge, on_delete=models.CASCADE, related_name='medications_procedures')
    internal_medication = models.TextField(null=True, blank=True)
    treatment_procedure = models.TextField(null=True, blank=True)

    def __str__(self):
        return f"Medication and Procedure for Discharge {self.discharge.id}"
    
from datetime import date
class IPBill(models.Model):
    ipinvoicenumber = models.CharField(max_length=200, unique=True, blank=True)
    ip_admission = models.ForeignKey('ippatientadmission', on_delete=models.CASCADE, related_name="bills")
    discharge = models.ForeignKey('PatientDischarge', on_delete=models.SET_NULL, null=True, blank=True, related_name="bills")
    room_charges = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    medicine_charges = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    treatment_charges = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    subtotal = models.DecimalField(max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    other_expenses = models.DecimalField(max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    discount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    tax = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    billing_date = models.DateField(default=datetime.date.today)
    food_expenses = models.DecimalField(max_digits=10, decimal_places=2, default=0.00, null=True, blank=True)
    billingstaff=models.ForeignKey(Staffallocation,on_delete=models.CASCADE, null=True, blank=True)
    def save(self, *args, **kwargs):
        if not self.ipinvoicenumber:
            today = date.today().strftime("%Y%m%d")  # Format: YYYYMMDD
            with transaction.atomic():  # Ensures concurrency safety
                last_bill = IPBill.objects.filter(ipinvoicenumber__startswith=f"IPB{today}").select_for_update().order_by('-ipinvoicenumber').first()
                if last_bill and last_bill.ipinvoicenumber:
                    last_number = int(last_bill.ipinvoicenumber[-3:])  # Get last 3 digits
                    new_number = last_number + 1
                else:
                    new_number = 1  # Start from 001 if no previous bill for the day
                self.ipinvoicenumber = f"IPB{today}{new_number:03d}"  # IPBYYYYMMDDXXX
        super().save(*args, **kwargs)
class RoomChangeLog(models.Model):
    ipno = models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True,default=None, blank=True)
    # From accommodation details
    from_room_or_ward = models.ForeignKey(
        'Room_details',
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        related_name='room_changes_from'  # Unique reverse accessor
    )
    # To accommodation details
    to_room_or_ward = models.ForeignKey(
        'Room_details',
        on_delete=models.CASCADE,
        null=True,
        blank=True,
        related_name='room_changes_to'  # Unique reverse accessor
    )
    change_date = models.DateField(default=timezone.now)
    change_time = models.TimeField(default=timezone.now)
    # Stay duration before room change
    no_of_days_stayed = models.PositiveIntegerField(default=1)
    rate_per_day = models.DecimalField(max_digits=10, decimal_places=2, default=0.0)
    total_rent = models.DecimalField(max_digits=10, decimal_places=2, default=0.0)
    changed_by = models.ForeignKey(Staffallocation,on_delete=models.CASCADE, null=True, blank=True)
    remarks = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    def __str__(self):
        return f"Change - IP: {self.ipno.id} | From {self.from_room_or_ward} to {self.to_room_or_ward}"

class ipexpandedbillmedicinedetail(models.Model):
    ipno = models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True,default=None, blank=True)
    ipbilldt = models.ForeignKey(IPBill,on_delete=models.CASCADE, null=True,default=None, blank=True)
    medicinename=models.TextField()
    count= models.TextField(default=None, null=True, blank=True)
    dosage= models.TextField(default=None, null=True, blank=True)
    physicalstock=models.ForeignKey(Physicalstockdetails,on_delete=models.CASCADE,default=1)
    Current_Date=models.DateField(default=datetime.date.today)
    rate_per_medicine= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    totalmedicine = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
class ipexpandedbilltreatmentdetail(models.Model):
    ipno = models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True,default=None, blank=True)
    ipbilldt = models.ForeignKey(IPBill,on_delete=models.CASCADE, null=True,default=None, blank=True)
    treatmentcount= models.TextField(default=None, null=True, blank=True)
    ipno=models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True, blank=True)
    tratmntid=models.ForeignKey(Treatment_master,on_delete=models.CASCADE, null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    rate_per_treatment = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_treatmentrate = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
class IPExpandedBillRoomDetail(models.Model):
    ipbill = models.ForeignKey(IPBill, on_delete=models.CASCADE, related_name="expanded_room_details")
    ipno = models.ForeignKey(ippatientadmission, on_delete=models.CASCADE, related_name="room_details")
    room = models.ForeignKey(Room_details, on_delete=models.SET_NULL, null=True, blank=True)
    
    no_of_days = models.PositiveIntegerField(default=1)
    
    rate_per_day = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_rent = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
    remarks = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return f"IP: {self.ipno.id} | Room: {self.room} | {self.from_date} to {self.to_date}"

    def save(self, *args, **kwargs):
        # Auto-calculate total_rent if not manually set
        if not self.total_rent:
            self.total_rent = self.no_of_days * float(self.rate_per_day)
        super().save(*args, **kwargs)
class ipexpandedbillotherexpensesdetail(models.Model):
    ipno = models.ForeignKey(ippatientadmission,on_delete=models.CASCADE, null=True,default=None, blank=True)
    ipbilldt = models.ForeignKey(IPBill,on_delete=models.CASCADE, null=True,default=None, blank=True)
    service = models.TextField(blank=True, null=True)
    details= models.TextField(blank=True, null=True)
    charges = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    Current_Date=models.DateField(default=datetime.date.today)
    deletedstatus = models.BooleanField(default=False)
class packagemaster(models.Model):
    packagename = models.TextField(blank=True, null=True)
    packagedetails = models.TextField(blank=True, null=True)
    rate= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    created_at = models.DateTimeField(auto_now_add=True)
    branchdt=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    status=models.CharField(max_length = 300,default=None, null=True, blank=True)
    deleted = models.BooleanField(default=False)  # Soft delete flag
    deleted_date = models.DateField(null=True, blank=True) 
    


class TreatmentRoom_details(models.Model):
    Floorno = models.CharField(max_length=50)
    Roomno = models.CharField(max_length=50, null=True, blank=True)  # Room No should allow null for Wards

class oppatienttreamentroombooking(models.Model):
    patientid=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True,default=None, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    bookingdate=  models.DateField(default=datetime.date.today)
    bookingstarttime=models.TimeField()
    bookingendtime=models.TimeField()
    treatmntroom=models.ForeignKey(TreatmentRoom_details,on_delete=models.CASCADE, null=True, blank=True)
    branchdt=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=None, null=True)
    bookingstatus = models.BooleanField(default=True)
    handledystaff=models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    bookingenddate=  models.DateField(default=datetime.date.today)
    


class proceduredt(models.Model):
    procedurename=models.CharField(max_length = 300)
    status = models.BooleanField(default=True)

class oppatienttimeslotbooking(models.Model):
    patientid=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True,default=None, blank=True)
    Gender=models.CharField(max_length = 30)
    Current_Date=models.DateField(default=datetime.date.today)
    bookingdate=  models.DateField(default=datetime.date.today)
    bookingstarttime=models.TimeField()
    bookingendtime=models.TimeField()
    proceduretaken=models.ForeignKey(proceduredt,on_delete=models.CASCADE, null=True, blank=True)
    branchdt=models.ForeignKey(Branch,on_delete=models.CASCADE,default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default=None, null=True)
    bookingstatus = models.BooleanField(default=True)
    handledystaff=models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    bookingenddate=  models.DateField(default=datetime.date.today)

# oppatient
class oppatientadmission(models.Model):
    MR_Number=models.ForeignKey(Patient_details,on_delete=models.CASCADE, null=True, blank=True)
    bloodgroup= models.TextField(default=None,null=True, blank=True)
    address= models.TextField(default=None,null=True, blank=True)
    Current_Date=models.DateField(default=datetime.date.today)
    age= models.CharField(max_length=100)
    contactnumber= models.CharField(max_length=100,default=None, null=True, blank=True)
    reasonforadmission= models.TextField(default=None, null=True, blank=True)
    Admittedstatus=models.BooleanField(default=True)
    # Package-related fields (optional usage)
    need_package = models.BooleanField(default=False)
    package = models.ForeignKey('PackageMaster', on_delete=models.SET_NULL, null=True, blank=True)	
    total_package_rate = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    # Bystander
    need_bystander = models.BooleanField(default=False)
    bystander_rate = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    totalpaidamount = models.DecimalField(max_digits=10, decimal_places=2, null=True, blank=True)
    # Advance payment
    due_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    discount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    advance_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    payingamount= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    amountpaidwithoutbystander= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    start_date = models.DateField(default=datetime.date.today,null=True, blank=True)
    end_date = models.DateField(default=datetime.date.today,null=True, blank=True)
    advancedue=models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    originalpcktotaalamountpaid=models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    totalpackageamountwithoutdiscount=models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
class OPPackagePayment(models.Model):
    admission = models.ForeignKey(oppatientadmission, related_name='payments', on_delete=models.CASCADE)
    discount= models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    payment_date = models.DateField(default=datetime.date.today)
    start_date = models.DateField(null=True, blank=True)
    end_date = models.DateField(null=True, blank=True)
    amount_paid = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)  # ← total package amount
    due_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    bystander_payment = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    mr_number = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
    package_id = models.ForeignKey('PackageMaster', on_delete=models.SET_NULL, null=True, blank=True)
    
class Food(models.Model):
    name = models.CharField(max_length=200, unique=True)
    created_at = models.DateTimeField(auto_now_add=True)

    def _str_(self):
        return self.name
        
class InventoryCategory(models.Model):
    Category_name=models.CharField(max_length = 300)


class InventoryCompany(models.Model):
    Comapany_name=models.CharField(max_length = 300)


class inventorymaster(models.Model):
    itemcode=models.CharField(max_length = 100,null=True)
    itemnm=models.CharField(max_length = 300)
    bsuntid=models.ForeignKey(baseunit,on_delete=models.CASCADE)
    Generic_name=models.CharField(max_length = 300,default=None,null=True)
    category_name=models.ForeignKey(InventoryCategory,on_delete=models.CASCADE, null=True, blank=True)
    racknumber=models.CharField(max_length = 300,default=None,null=True)
    Sideeffect=models.CharField(max_length = 300,default=None,null=True)
    hsncode=models.CharField(max_length = 300,default=None,null=True)
    taxpercentage=models.ForeignKey(Taxmaster,on_delete=models.CASCADE, null=True, blank=True)


class Inventorystockdetails(models.Model):
    storenm = models.ForeignKey(storedetails, on_delete=models.CASCADE, default="1")
    itemnm = models.ForeignKey(inventorymaster, on_delete=models.CASCADE, default=None)
    unt = models.ForeignKey(unitdt, on_delete=models.CASCADE, default=None)
    suppliernm = models.ForeignKey(supplier, on_delete=models.CASCADE, default=None, null=True, blank=True)
    Comapany_name = models.ForeignKey(InventoryCompany, on_delete=models.CASCADE, null=True, blank=True)
    Manufacturer_date = models.DateField(null=True)
    Expiry_date = models.DateField(null=True)
    Batch_no = models.CharField(max_length=500, default=None)
    Rate = models.CharField(max_length=300, default=None)
    qty = models.IntegerField()  
    lastupdatedate = models.DateField(default=timezone.now)
    insertedstaffid = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, default="1")
    deleted = models.BooleanField(default=False)  
    deleted_date = models.DateField(null=True, blank=True) 
    stockbranch=models.ForeignKey(Branch, on_delete=models.CASCADE, default=None, null=True, blank=True)



class invreorderdetails(models.Model):
    companyid=models.ForeignKey(InventoryCompany,on_delete=models.CASCADE,null=True, blank=True)
    itemname=models.ForeignKey(inventorymaster,on_delete=models.CASCADE,default=None)
    qty=models.CharField(max_length = 300,default=None)



class inventoryInvoiceMaster(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    payementmode = models.CharField(max_length=300, default="Cash", null=True, blank=True)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    Mrno = models.ForeignKey(Patient_details, on_delete=models.CASCADE, null=True, blank=True)
    Invoicenumber = models.CharField(max_length=400, default=None)
    currentdate = models.DateField()
    subtotal = models.FloatField(default=0, null=True, blank=True)
    tax = models.FloatField(default=0, null=True, blank=True)
    shipping = models.FloatField(default=0, null=True, blank=True)
    total = models.FloatField(default=0, null=True, blank=True)
    patientname = models.CharField(max_length=400, default=None, null=True, blank=True)
    patientphno = models.CharField(max_length=15, default=None, null=True, blank=True)
    discount = models.CharField(max_length=15, default=None, null=True, blank=True)
    preparedby = models.ForeignKey(Staffallocation, on_delete=models.CASCADE, default=None, null=True)
    consultationfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    consultationfeecumregfee = models.CharField(max_length=400, default=None, null=True, blank=True)
    restockstatus = models.BooleanField(default=True)
    totalsgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    totalcgstamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    totaltaxableamount = models.CharField(max_length=400, default=None, null=True, blank=True)
    cash_amount = models.CharField(max_length=400, default=0, null=True, blank=True)
    gpay_amount = models.CharField(max_length=400, default=0, null=True, blank=True)
    card_amount = models.CharField(max_length=400, default=0, null=True, blank=True)



class inventoryinvoicechild(models.Model):
    quantity=models.IntegerField()
    particulars=models.CharField(max_length=400,default=None)
    amount=models.FloatField()
    sutotal=models.FloatField()
    Mrno=models.ForeignKey(Patient_details,on_delete=models.CASCADE,null=True, blank=True)
    currentdate=models.DateTimeField(default=now)
    invoiceno=models.CharField(max_length=100,default=None)
    description=models.CharField(max_length=400,default=None)
    patientname=models.CharField(max_length=400,default=None,null=True, blank=True)
    patientphno=models.CharField(max_length=15,default=None,null=True, blank=True)
    invmasterid=models.ForeignKey(inventoryInvoiceMaster,on_delete=models.CASCADE,null=True, blank=True)
    batchno=models.CharField(max_length=400,default=None,null=True, blank=True)
    expirydate=models.CharField(max_length=400,default=None,null=True, blank=True)
    mfg=models.CharField(max_length=400,default=None,null=True, blank=True)
    unt=models.CharField(max_length=400,default=None)
    hsncode=models.CharField(max_length=400,default=None)
    suppid=models.ForeignKey(supplier,on_delete=models.CASCADE,default=None,null=True, blank=True)
    tax = models.FloatField(default=None)
    taxamount= models.FloatField(default=None)
    baseqty=models.CharField(max_length=400,default=None)
    sgst=models.CharField(max_length=400,default=None,null=True, blank=True)
    cgst=models.CharField(max_length=400,default=None,null=True, blank=True)
    sgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    cgstamount=models.CharField(max_length=400,default=None,null=True, blank=True)
    taxableamount=models.CharField(max_length=400,default=None,null=True, blank=True)



from decimal import Decimal

class AppointmentFeeRule(models.Model):
    RULE_TYPE_CHOICES = [
        ('FIRST_VISIT', 'First Visit Registration Fee'),
        ('FOLLOW_UP', 'Follow-up Visit Fee'),
        ('PACKAGE', 'Package Visit Fee'),
    ]

    rule_name = models.CharField(max_length=200)
    rule_type = models.CharField(max_length=20, choices=RULE_TYPE_CHOICES)
    base_fee = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    visit_count_limit = models.PositiveIntegerField(null=True, blank=True)    # e.g., 4 for package
    time_period_months = models.PositiveIntegerField(null=True, blank=True)    # e.g., 2 -> used for window calc (60 days)
    additional_fee = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    is_active = models.BooleanField(default=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    class Meta:
        ordering = ['created_at']

    def __str__(self):
        return f"{self.rule_name} - {self.get_rule_type_display()}"


class PatientVisitTracking(models.Model):
    patient = models.ForeignKey('Patient_details', on_delete=models.CASCADE, related_name='visit_tracking')
    appointment = models.ForeignKey('Appointments', on_delete=models.CASCADE, related_name='visit_tracking', null=True, blank=True)
    visit_date = models.DateField()
    fee_paid = models.DecimalField(max_digits=10, decimal_places=2, default=Decimal('0.00'))
    fee_type = models.CharField(max_length=50, default='REGULAR')  
    is_first_visit_in_period = models.BooleanField(default=False)
    period_start_date = models.DateField(null=True, blank=True)
    period_end_date = models.DateField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    class Meta:
        ordering = ['-visit_date']

    def __str__(self):
        return f"{self.patient.Patient_Name} - {self.visit_date} - ₹{self.fee_paid}"




class CreditNoteMaster(models.Model):
    hospitalname = models.ForeignKey("Hospitaldetails", on_delete=models.CASCADE)
    branch = models.ForeignKey("Branch", on_delete=models.CASCADE)
    invoicemaster = models.ForeignKey(newInvoiceMaster, on_delete=models.CASCADE, related_name="credit_notes")
    creditnote_number = models.CharField(max_length=200, unique=True, blank=True, null=True)
    creditnote_date = models.DateField(default=now)
    reason = models.TextField(null=True, blank=True)
    subtotal = models.FloatField(default=0, null=True, blank=True)
    tax = models.FloatField(default=0, null=True, blank=True)
    total = models.FloatField(default=0, null=True, blank=True)
    created_by = models.ForeignKey("Staffallocation", on_delete=models.SET_NULL, null=True, blank=True)
    patientname = models.CharField(max_length=400, null=True, blank=True)
    patientphno = models.CharField(max_length=15, null=True, blank=True)

    def str(self):
        return f"Credit Note {self.creditnote_number}"
    
# 4. CREDIT NOTE CHILD
class CreditNoteChild(models.Model):
    creditnote_master = models.ForeignKey(
        CreditNoteMaster, on_delete=models.CASCADE, related_name="credit_items"
    )
    invoice_child = models.ForeignKey(
        newInvoiceChild, on_delete=models.SET_NULL, null=True, blank=True
    )
    particulars = models.CharField(max_length=400, null=True, blank=True)
    quantity = models.IntegerField(default=0)
    amount = models.FloatField(default=0)
    tax = models.FloatField(default=0, null=True, blank=True)
    total = models.FloatField(default=0, null=True, blank=True)
    remarks = models.TextField(null=True, blank=True)

    # ✅ Indicates whether this credit note item has been restocked to Physicalstockdetails
    restocked = models.BooleanField(default=False)

    def str(self):
        return f"{self.particulars or 'Item'} ({self.quantity})"
        

class PaymentUpdateLog(models.Model):
    appointment_invoice = models.ForeignKey(
        appointmentinvoicemaster,
        on_delete=models.CASCADE
    )
    previous_payment_mode = models.CharField(max_length=300)
    updated_payment_mode = models.CharField(max_length=300)
    previous_status = models.CharField(max_length=100, null=True, blank=True)  # Add this
    updated_status = models.CharField(max_length=100, null=True, blank=True)   # Add this
    updated_by = models.ForeignKey(
        Staffallocation,
        on_delete=models.CASCADE
    )
    updated_date = models.DateTimeField(auto_now_add=True)
    updatedamount = models.FloatField(default=0)
    beforeupdatingamount = models.FloatField(default=0)

    def __str__(self):
        return f"Invoice {self.appointment_invoice.id} updated by {self.updated_by}"

class PaymentUpdateLognew(models.Model):
    invoice = models.ForeignKey(
        newInvoiceMaster,
        on_delete=models.CASCADE,
        related_name='payment_update_logs'
    )
    previous_payment_mode = models.CharField(max_length=300)
    updated_payment_mode = models.CharField(max_length=300)
    previous_cash_amount = models.CharField(max_length=400, default='0')
    previous_gpay_amount = models.CharField(max_length=400, default='0')
    previous_card_amount = models.CharField(max_length=400, default='0')
    updated_cash_amount = models.CharField(max_length=400, default='0')
    updated_gpay_amount = models.CharField(max_length=400, default='0')
    updated_card_amount = models.CharField(max_length=400, default='0')
    previous_total = models.FloatField(default=0)
    updated_total = models.FloatField(default=0)
    updated_by = models.ForeignKey(
        Staffallocation,
        on_delete=models.CASCADE,
        related_name='payment_updates_made'
    )
    updated_date = models.DateTimeField(auto_now_add=True)
    ip_address = models.GenericIPAddressField(null=True, blank=True)
    user_agent = models.TextField(null=True, blank=True)
    remarks = models.TextField(null=True, blank=True)

    class Meta:
        ordering = ['-updated_date']
        verbose_name = 'Pharmacy Invoice Payment Update Log'
        verbose_name_plural = 'Pharmacy Invoice Payment Update Logs'

    def __str__(self):
        return f"Invoice {self.invoice.Invoicenumber} updated by {self.updated_by.Staff.Staff_firstname} on {self.updated_date.strftime('%Y-%m-%d %H:%M')}"



class ZohoConfig(models.Model):
    client_id = models.CharField(max_length=255)
    client_secret = models.CharField(max_length=255)
    refresh_token = models.TextField()
    token_url = models.URLField()
    contacts_url = models.URLField()

    created_at = models.DateTimeField(auto_now_add=True)

    def __str__(self):
        return "Zoho Configuration"



class ZohoAccessToken(models.Model):
    access_token = models.TextField()
    expires_at = models.DateTimeField()

    created_at = models.DateTimeField(auto_now_add=True)

    def is_valid(self):
        return self.expires_at > timezone.now()



class AssignedAppointments(models.Model):    
    appointment = models.ForeignKey(Appointments, on_delete=models.CASCADE, null=True, blank=True, 
                                   verbose_name="Linked Appointment")
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE)
    doctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    appointment_date = models.DateField()
    schedule_date = models.DateField(null=True, blank=True, verbose_name="Schedule date for case history")
    remarks = models.CharField(max_length=300, null=True, blank=True)
    assigned_by = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, related_name='assigned_appointments')
    assigned_date = models.DateTimeField(auto_now_add=True)
    is_used = models.BooleanField(default=False, verbose_name="Prescription created")
    used_date = models.DateTimeField(null=True, blank=True)
    
    class Meta:
        ordering = ['-assigned_date']
        verbose_name = "Assigned Appointment"
        verbose_name_plural = "Assigned Appointments"
    
    def __str__(self):
        return f"{self.patient.Patient_Name} - {self.appointment_date} - {self.doctor.Staff_firstname}"
    
    def mark_as_used(self):
        
        self.is_used = True
        self.used_date = timezone.now()
        self.save()


class PrescriptionEditLog(models.Model):
    ACTION_CHOICES = [
        ("EDIT", "Edit"),
        ("DELETE", "Delete"),
    ]
    
    # Reference to the prescription
    prescription = models.ForeignKey('Prescriptionnew', on_delete=models.SET_NULL, null=True, blank=True)
    action = models.CharField(max_length=10, choices=ACTION_CHOICES)
    
    # Original prescription data (before edit/delete)
    original_medicine_name = models.CharField(max_length=100, null=True, blank=True)
    original_noofdays = models.CharField(max_length=400, null=True, blank=True)
    original_moringtime = models.CharField(max_length=100, null=True, blank=True)
    original_noontime = models.CharField(max_length=100, null=True, blank=True)
    original_nighttime = models.CharField(max_length=100, null=True, blank=True)
    original_beforeorafterdiet = models.CharField(max_length=100, null=True, blank=True)
    original_medicineguideline = models.CharField(max_length=400, null=True, blank=True)
    original_qtyprescriped = models.IntegerField(null=True, blank=True)
    original_medicine_id = models.IntegerField(null=True, blank=True)
    original_physicalstock_id = models.IntegerField(null=True, blank=True)
    original_prescription_date = models.DateField(null=True, blank=True)
    original_patient_id = models.IntegerField(null=True, blank=True)
    original_doctor_id = models.IntegerField(null=True, blank=True)
    
    # New prescription data (after edit - only for EDIT action)
    new_medicine_name = models.CharField(max_length=100, null=True, blank=True)
    new_noofdays = models.CharField(max_length=400, null=True, blank=True)
    new_moringtime = models.CharField(max_length=100, null=True, blank=True)
    new_noontime = models.CharField(max_length=100, null=True, blank=True)
    new_nighttime = models.CharField(max_length=100, null=True, blank=True)
    new_beforeorafterdiet = models.CharField(max_length=100, null=True, blank=True)
    new_medicineguideline = models.CharField(max_length=400, null=True, blank=True)
    new_qtyprescriped = models.IntegerField(null=True, blank=True)
    new_medicine_id = models.IntegerField(null=True, blank=True)
    new_physicalstock_id = models.IntegerField(null=True, blank=True)
    new_prescription_date = models.DateField(null=True, blank=True)
    new_doctor_id = models.IntegerField(null=True, blank=True)
    
    # Log metadata
    staff = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True, blank=True)
    branch = models.ForeignKey('Branch', on_delete=models.SET_NULL, null=True, blank=True)
    patient = models.ForeignKey('Patient_details', on_delete=models.SET_NULL, null=True, blank=True)
    action_date = models.DateField(default=timezone.now)
    action_time = models.TimeField(default=timezone.now)
    
    def __str__(self):
        return f"{self.action} - Prescription {self.prescription_id} on {self.action_date}"

class PurchaseOrder(models.Model):
    po_number = models.CharField(max_length=50, unique=True)
    po_date = models.DateField()

    branch = models.ForeignKey(
        'Branch',
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name='purchase_orders_source'
    )

    destination_branch = models.ForeignKey(
        'Branch',
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name='purchase_orders_destination'
    )

    supplier_name = models.CharField(max_length=200)
    supplier_address = models.TextField()
    proforma_reference = models.CharField(max_length=50, blank=True, null=True)
    expected_delivery_date = models.DateField(null=True, blank=True)
    payment_terms = models.CharField(max_length=50)
    transport_mode = models.CharField(max_length=100, blank=True)
    gst_applicable = models.BooleanField(default=True)
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    grand_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    amount_in_words = models.CharField(max_length=255, blank=True)
    prepared_by = models.CharField(max_length=100, blank=True)
    checked_by = models.CharField(max_length=100, blank=True)
    approved_by = models.CharField(max_length=100, blank=True)
    approver_designation = models.CharField(max_length=100, blank=True)
    created_by = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)

    STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('in_transit', 'In Transit'),
        ('completed', 'Completed'),
        ('cancelled', 'Cancelled'),
    ]

    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='pending')

    def __str__(self):
        return f"PO-{self.po_number}"

class POItem(models.Model):
    purchase_order = models.ForeignKey(PurchaseOrder, on_delete=models.CASCADE, related_name='items')
    sl_no = models.IntegerField()
    item_name = models.CharField(max_length=255)
    quantity = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=10)
    unit_rate = models.DecimalField(max_digits=10, decimal_places=2)
    total_amount = models.DecimalField(max_digits=12, decimal_places=2)
    
    def save(self, *args, **kwargs):
        if not self.total_amount and self.quantity and self.unit_rate:
            self.total_amount = float(self.quantity) * float(self.unit_rate)
        super().save(*args, **kwargs)


class ProformaInvoice(models.Model):
    PAYMENT_STATUS_CHOICES = [
        ('Unpaid', 'Unpaid'),
        ('Paid', 'Paid'),
        ('Credit', 'Credit'),
    ]
    purchase_order = models.ForeignKey(PurchaseOrder, on_delete=models.CASCADE, null=True, blank=True)
    voucher_no = models.CharField(max_length=50, unique=True)
    invoice_date = models.DateField()
    branch = models.ForeignKey('Branch', on_delete=models.SET_NULL, null=True, blank=True)
    buyer_name = models.CharField(max_length=200)
    buyer_address = models.TextField()
    buyer_gstin = models.CharField(max_length=15, blank=True)
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    gst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    grand_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    amount_in_words = models.CharField(max_length=255, blank=True)
    created_by = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    payment_status = models.CharField(max_length=10, choices=PAYMENT_STATUS_CHOICES, default='Unpaid')
    payment_date = models.DateTimeField(null=True, blank=True)
    payment_updated_by = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True, blank=True)
    
    def __str__(self):
        return self.voucher_no

class ProformaItem(models.Model):
    proforma = models.ForeignKey(ProformaInvoice, on_delete=models.CASCADE, related_name='items')
    sl_no = models.IntegerField()
    description = models.CharField(max_length=255)
    batch_info = models.CharField(max_length=100, blank=True)
    quantity = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=10)
    rate = models.DecimalField(max_digits=10, decimal_places=2)
    gst_percent = models.DecimalField(max_digits=4, decimal_places=2, default=18)
    hsn_code = models.CharField(max_length=20, blank=True)
    amount = models.DecimalField(max_digits=12, decimal_places=2)
    
    def save(self, *args, **kwargs):
        if not self.amount and self.quantity and self.rate:
            base = float(self.quantity) * float(self.rate)
            gst = base * (float(self.gst_percent) / 100)
            self.amount = base + gst
        super().save(*args, **kwargs)
# B2B Invoice Models
class B2BInvoice(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    invoicenumber = models.CharField(max_length=400, default=None)
    invoice_date = models.DateField()
    proforma_reference = models.CharField(max_length=400, blank=True, null=True)
    
    # Buyer details (Bill to)
    buyer_name = models.CharField(max_length=400)
    buyer_address = models.TextField()
    buyer_gstin = models.CharField(max_length=20, blank=True, null=True)
    buyer_state = models.CharField(max_length=100, blank=True, null=True, default="Kerala")
    buyer_state_code = models.CharField(max_length=10, blank=True, null=True, default="32")
    
    # Consignee details (Ship to)
    consignee_name = models.CharField(max_length=400)
    consignee_address = models.TextField()
    consignee_gstin = models.CharField(max_length=20, blank=True, null=True)
    consignee_state = models.CharField(max_length=100, blank=True, null=True, default="Kerala")
    consignee_state_code = models.CharField(max_length=10, blank=True, null=True, default="32")
    
    # Dispatch Details
    buyers_order_no = models.CharField(max_length=100, blank=True, null=True)
    buyers_order_date = models.DateField(blank=True, null=True)
    dispatch_doc_no = models.CharField(max_length=100, blank=True, null=True)
    delivery_note_date = models.DateField(blank=True, null=True)
    dispatched_through = models.CharField(max_length=200, blank=True, null=True, default="By Road")
    destination = models.CharField(max_length=200, blank=True, null=True)
    terms_of_delivery = models.CharField(max_length=200, blank=True, null=True, default="F.O.R. Destination")
    payment_mode = models.CharField(max_length=100, blank=True, null=True, default="Cash")
    
    # Financials
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    cgst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    sgst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    igst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    grand_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    amount_in_words = models.CharField(max_length=255, blank=True)
    
    created_by = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.invoicenumber


class B2BInvoiceItem(models.Model):
    invoice = models.ForeignKey(B2BInvoice, on_delete=models.CASCADE, related_name='items')
    sl_no = models.IntegerField()
    description = models.CharField(max_length=255)
    batch_info = models.CharField(max_length=100, blank=True)
    quantity = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=10)
    rate = models.DecimalField(max_digits=10, decimal_places=2)
    gst_percent = models.DecimalField(max_digits=4, decimal_places=2, default=18)
    hsn_code = models.CharField(max_length=20, blank=True)
    taxable_value = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    cgst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    sgst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    igst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    physical_stock_id = models.IntegerField(null=True, blank=True)  
    medicine_master_id = models.IntegerField(null=True, blank=True)
    batch_no = models.CharField(max_length=100, blank=True)
    expiry_date = models.DateField(null=True, blank=True)
    manufacturer_date = models.DateField(null=True, blank=True)
    company_id = models.IntegerField(null=True, blank=True)
    supplier_id = models.IntegerField(null=True, blank=True)
    unit_id = models.IntegerField(null=True, blank=True)


# B2C Invoice Models
class B2CInvoice(models.Model):
    hospitalname = models.ForeignKey(Hospitaldetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE)
    invoicenumber = models.CharField(max_length=400, default=None)
    invoice_date = models.DateField()
    proforma_reference = models.CharField(max_length=400, blank=True, null=True)
    
    # Customer details (Consignee)
    customer_name = models.CharField(max_length=400)
    customer_address = models.TextField()
    customer_state = models.CharField(max_length=100, blank=True, null=True, default="Kerala")
    customer_state_code = models.CharField(max_length=10, blank=True, null=True, default="32")
    customer_gstin = models.CharField(max_length=20, blank=True, null=True)
    
    # Bill to (same as customer for B2C)
    bill_to_name = models.CharField(max_length=400, blank=True, null=True)
    bill_to_address = models.TextField(blank=True, null=True)
    
    # Dispatch Details
    transport_mode = models.CharField(max_length=100, blank=True, null=True, default="By Road")
    place_of_supply = models.CharField(max_length=200, blank=True, null=True)
    
    # Financials
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    cgst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    sgst_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    grand_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    amount_in_words = models.CharField(max_length=255, blank=True)
    
    created_by = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    def __str__(self):
        return self.invoicenumber


class B2CInvoiceItem(models.Model):
    invoice = models.ForeignKey(B2CInvoice, on_delete=models.CASCADE, related_name='items')
    sl_no = models.IntegerField()
    description = models.CharField(max_length=255)
    batch_info = models.CharField(max_length=100, blank=True)
    quantity = models.DecimalField(max_digits=10, decimal_places=2)
    unit = models.CharField(max_length=10)
    rate = models.DecimalField(max_digits=10, decimal_places=2)
    gst_percent = models.DecimalField(max_digits=4, decimal_places=2, default=18)
    hsn_code = models.CharField(max_length=20, blank=True)
    taxable_value = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    cgst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    sgst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0)

class StockTransfer(models.Model):
    """
    Model to track stock transfers between branches
    """
    STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('verified', 'Verified'),
        ('approved', 'Approved'),
        ('in_transit', 'In Transit'),
        ('delivered', 'Delivered'),
        ('completed', 'Completed'),
        ('rejected', 'Rejected'),
        ('cancelled', 'Cancelled'),
    ]
    # Transfer Information
    transfer_number = models.CharField(max_length=50, unique=True, blank=True)
    purchase_order = models.ForeignKey(
        'PurchaseOrder',
        on_delete=models.SET_NULL,
        null=True,
        blank=True,
        related_name='stock_transfers'
    )
    
    
    from_branch = models.ForeignKey(
        'Branch',
        on_delete=models.SET_NULL,
        null=True,
        related_name='transfers_from'
    )
    to_branch = models.ForeignKey(
        'Branch',
        on_delete=models.SET_NULL,
        null=True,
        related_name='transfers_to'
    )
    # Transfer Details
    expected_delivery_date = models.DateField(null=True, blank=True)
    actual_delivery_date = models.DateField(null=True, blank=True)
    remarks = models.TextField(blank=True, null=True)
    requested_qty=models.IntegerField(default=0)
    # Status
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='pending')
    
    # Quantity Summary
    total_items = models.IntegerField(default=0)
    total_quantity = models.IntegerField(default=0)
    
    # Verification Fields (Added)
    verified_by = models.IntegerField(null=True, blank=True)
    verified_at = models.DateTimeField(null=True, blank=True)
    verified_remarks = models.TextField(blank=True, null=True)
    
    # Approval Fields (Added)
    approved_by = models.IntegerField(null=True, blank=True)
    approved_at = models.DateTimeField(null=True, blank=True)
    approved_remarks = models.TextField(blank=True, null=True)
    
    # Dispatch Fields (Added)
    dispatched_by = models.IntegerField(null=True, blank=True)
    dispatched_at = models.DateTimeField(null=True, blank=True)
    
    # Receiving Fields (Added)
    received_by = models.IntegerField(null=True, blank=True)
    received_at = models.DateTimeField(null=True, blank=True)
    
    # Rejection Fields (Added)
    rejection_reason = models.TextField(blank=True, null=True)
    
    # Audit Fields
    created_by = models.IntegerField(null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_by = models.IntegerField(null=True, blank=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    # class Meta:
    #     db_table = 'stock_transfer'
    #     verbose_name = 'Stock Transfer'
    #     verbose_name_plural = 'Stock Transfers'
    #     ordering = ['-created_at']
    
    # def __str__(self):
    #     return f"{self.transfer_number} - {self.from_branch.Branch_Name} to {self.to_branch.Branch_Name}"
class StockTransferItem(models.Model):
    """
    Model to track items in a stock transfer
    """
    STATUS_CHOICES = [
        ('pending', 'Pending'),
        ('verified', 'Verified'),
        ('short_received', 'Short Received'),
        ('excess_received', 'Excess Received'),
        ('transferred', 'Transferred'),
        ('cancelled', 'Cancelled'),
    ]
    
    stock_transfer = models.ForeignKey(
        StockTransfer,
        on_delete=models.CASCADE,
        related_name='items'
    )
    
    approved_quantity = models.IntegerField(default=0)
    
    # Item Information
    item = models.ForeignKey(
        'medicinemaster',
        on_delete=models.SET_NULL,
        null=True
    )
    
    po_item = models.ForeignKey(
        'POItem',
        on_delete=models.SET_NULL,
        null=True,
        blank=True
    )
    
    quantity = models.IntegerField()
    transferred_quantity = models.IntegerField(default=0)
    requested_quantity= models.IntegerField(default=0)
    
    # Verification Fields (Added)
    verified_quantity = models.IntegerField(default=0)
    received_quantity = models.IntegerField(default=0)
    verification_remarks = models.TextField(blank=True, null=True)
    
    # Batch Information
    batch_no = models.CharField(max_length=500)
    expiry_date = models.DateField(null=True, blank=True)
    manufacturer_date = models.DateField(null=True, blank=True)
    
    # Pricing
    rate = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    total_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    
    # Unit
    unit = models.ForeignKey('unitdt', on_delete=models.SET_NULL, null=True, blank=True)
    
    # Source Stock Reference
    source_stock = models.ForeignKey('Physicalstockdetails', on_delete=models.SET_NULL, null=True, blank=True)
    destination_stock = models.ForeignKey('Physicalstockdetails', on_delete=models.SET_NULL, null=True, blank=True, related_name='transfer_items')
    
    # Status
    status = models.CharField(max_length=20, choices=STATUS_CHOICES, default='pending')
    
    # Additional Info
    notes = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    # class Meta:
    #     db_table = 'stock_transfer_item'
    #     verbose_name = 'Stock Transfer Item'
    #     verbose_name_plural = 'Stock Transfer Items'
    
    # def __str__(self):
    #     return f"{self.item_name or self.item} - Qty: {self.quantity}"


class StockTransferLog(models.Model):
    """
    Model to log all actions related to stock transfers
    """
    ACTION_CHOICES = [
        ('CREATE', 'Created'),
        ('UPDATE', 'Updated'),
        ('STATUS_CHANGE', 'Status Changed'),
        ('CANCELLED', 'Cancelled'),
        ('VERIFIED', 'Verified'),
        ('APPROVED', 'Approved'),
        ('REJECTED', 'Rejected'),
        ('DISPATCHED', 'Dispatched'),
        ('RECEIVED', 'Received'),
        ('COMPLETED', 'Completed'),
    ]
    
    stock_transfer = models.ForeignKey(StockTransfer, on_delete=models.CASCADE, related_name='logs')
    action = models.CharField(max_length=20, choices=ACTION_CHOICES)
    old_status = models.CharField(max_length=20, null=True, blank=True)
    new_status = models.CharField(max_length=20, null=True, blank=True)
    staff_id = models.IntegerField(null=True, blank=True)
    remarks = models.TextField(blank=True, null=True)
    created_at = models.DateTimeField(auto_now_add=True)
    
    # class Meta:
    #     db_table = 'stock_transfer_log'
    #     verbose_name = 'Stock Transfer Log'
    #     verbose_name_plural = 'Stock Transfer Logs'
    #     ordering = ['-created_at']
    
    # def __str__(self):
    #     return f"{self.stock_transfer.transfer_number} - {self.action}"

class Headerdetails(models.Model):
    header_image = models.ImageField(upload_to='header/', null=True, blank=True)
    footer_image = models.ImageField(upload_to='footer/', null=True, blank=True)

class ProcedureMaster(models.Model):
    name = models.CharField(max_length=255, verbose_name="Service/Item Name")
    category = models.CharField(max_length=50, default='consultation')
    rate = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    description = models.TextField(blank=True, null=True, verbose_name="Description/Note")
    # Tracking fields
    created_by = models.CharField(max_length=100, blank=True, null=True)
    created_date = models.DateTimeField(auto_now_add=True)
    branch_id = models.ForeignKey(Branch,on_delete=models.CASCADE,default="5")
    # Status
    is_active = models.BooleanField(default=True)
    
    def __str__(self):
        return f"{self.name} - ₹{self.rate}"
    
    class Meta:
        ordering = ['-created_date']

class CasualityInvoiceMaster(models.Model):
    
    invoice_no = models.CharField(max_length=50, unique=True)
    invoice_date = models.DateField(auto_now_add=True)
    
    # Branch Information
    branch = models.ForeignKey('Branch', on_delete=models.SET_NULL, null=True, blank=True, related_name='casuality_invoices')
    hospital = models.ForeignKey('Hospitaldetails', on_delete=models.SET_NULL, null=True, blank=True)
    
    # Patient Information
    patient = models.ForeignKey('Patient_details', on_delete=models.SET_NULL, null=True, blank=True)
    patient_name = models.CharField(max_length=255)
    patient_mr_no = models.CharField(max_length=100, blank=True, null=True)
    patient_phone = models.CharField(max_length=20, blank=True, null=True)
    patient_address = models.TextField(blank=True, null=True)
    patient_age = models.CharField(max_length=20, blank=True, null=True)
    patient_gender = models.CharField(max_length=10, blank=True, null=True)
    
    # Financial fields
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0.00)
    tax_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    discount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    consultation_fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    registration_fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    
    # Payment
    payment_mode = models.CharField(max_length=20, default='Cash')
    payment_status = models.CharField(max_length=20, default='Pending')
    
    # Staff info
    created_by = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)

    cash_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00, blank=True, null=True)
    online_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00, blank=True, null=True)
    card_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00, blank=True, null=True)
    
    # Status
    is_cancelled = models.BooleanField(default=False)
    cancelled_by = models.ForeignKey('Staffdetails', on_delete=models.SET_NULL, null=True, blank=True, related_name='cancelled_casuality_invoices')
    cancelled_at = models.DateTimeField(null=True, blank=True)
    
    def __str__(self):
        return f"{self.invoice_no} - {self.patient_name}"
    
    class Meta:
        ordering = ['-created_at']


class CasualityInvoiceChild(models.Model):
    """Child table for casuality invoice items (procedures)"""
    invoice = models.ForeignKey(CasualityInvoiceMaster, on_delete=models.CASCADE, related_name='items')
    sl_no = models.PositiveIntegerField()
    
    # Procedure details
    procedure_name = models.CharField(max_length=300)
    procedure_code = models.CharField(max_length=50, blank=True, null=True)
    description = models.TextField(blank=True, null=True)
    
    # Quantity and pricing
    quantity = models.DecimalField(max_digits=8, decimal_places=2, default=1)
    rate = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    
    # Tax information
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0.00)
    tax_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    
    # Additional info
    notes = models.TextField(blank=True, null=True)
    is_completed = models.BooleanField(default=False)
    
    def __str__(self):
        return f"{self.invoice.invoice_no} - {self.procedure_name}"
    
    class Meta:
        ordering = ['sl_no']

class DebitNote(models.Model):
    debit_note_number = models.CharField(max_length=200, unique=True)
    debit_note_date = models.DateField()
    supplier = models.ForeignKey(supplier, on_delete=models.SET_NULL, null=True, blank=True)
    total_before_tax = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_tax_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    grand_total = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    remarks = models.TextField(null=True, blank=True)
    created_by = models.ForeignKey(Staffdetails, on_delete=models.CASCADE)
    created_at = models.DateTimeField(auto_now_add=True)

class DebitNoteItem(models.Model):
    debit_note = models.ForeignKey(DebitNote, on_delete=models.CASCADE, related_name='items')
    stock_item = models.ForeignKey(Physicalstockdetails, on_delete=models.CASCADE)
    medicine_name = models.CharField(max_length=500)
    batch_no = models.CharField(max_length=500)
    available_qty = models.IntegerField(default=0)
    return_qty = models.IntegerField()
    mrp = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0.00)
    before_tax_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    tax_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    total_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    remarks = models.CharField(max_length=500,null=True,blank=True)


class PurchaseInvoice(models.Model):
    """Purchase Invoice Header Model"""
    invoice_number = models.CharField(max_length=100, unique=True)
    invoice_date = models.DateField(default=timezone.now)
    supplier = models.ForeignKey(supplier, on_delete=models.CASCADE)
    company = models.ForeignKey(Comapany, on_delete=models.SET_NULL, null=True, blank=True)
    store = models.ForeignKey(storedetails, on_delete=models.CASCADE)
    branch = models.ForeignKey(Branch, on_delete=models.CASCADE, null=True, blank=True)
    
    supplier_bill_number = models.CharField(max_length=100, null=True, blank=True)
    supplier_bill_date = models.DateField(null=True, blank=True)
    payment_terms = models.CharField(max_length=100, default="Net 30")
    
    subtotal = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_discount = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_gst = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    shipping_charge = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    other_charge = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    grand_total = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    
    notes = models.TextField(null=True, blank=True)
    created_by = models.ForeignKey(Staffallocation, on_delete=models.CASCADE)
    created_date = models.DateTimeField(auto_now_add=True)
    updated_date = models.DateTimeField(auto_now=True)
    stock_updated = models.BooleanField(default=False, help_text="Whether stock was updated when invoice was created")
    amount_in_words = models.CharField(max_length=255, blank=True)
    def __str__(self):
        return f"{self.invoice_number} - {self.supplier.shopname}"
    
    class Meta:
        ordering = ['-invoice_date', '-created_date']

class PurchaseInvoiceItem(models.Model):
    """Purchase Invoice Item Details Model"""
    invoice = models.ForeignKey(PurchaseInvoice, on_delete=models.CASCADE, related_name='items')
    medicine = models.ForeignKey(medicinemaster, on_delete=models.CASCADE)
    batch_no = models.CharField(max_length=500)
    expiry_date = models.DateField(null=True, blank=True)
    manufacturer_date = models.DateField(null=True, blank=True)
    hsn_code = models.CharField(max_length=300, null=True, blank=True)
    
    quantity = models.IntegerField()
    free_quantity = models.IntegerField(default=0)
    unit_price = models.DecimalField(max_digits=10, decimal_places=2)
    discount_percent = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    discount_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    gst_percent = models.DecimalField(max_digits=5, decimal_places=2, default=0)
    gst_amount = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    total_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    wholesalerate = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    retalrate = models.DecimalField(max_digits=10, decimal_places=2, default=0)
    company = models.ForeignKey(Comapany, on_delete=models.SET_NULL, null=True, blank=True)
    base_quantity = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    base_rate = models.DecimalField(max_digits=12, decimal_places=2, default=0)
    total_base_quantity = models.DecimalField(max_digits=12, decimal_places=2, default=0,null=True)
    unt = models.ForeignKey(unitdt, on_delete=models.CASCADE, null=True, blank=True)
    def __str__(self):
        return f"{self.invoice.invoice_number} - {self.medicine.itemnm}"

class DeathRegister(models.Model):
    """Death Registration Model"""
    
    # For Registered Patients (FK to Patient_details)
    patient = models.ForeignKey(
        Patient_details, 
        on_delete=models.CASCADE, 
        null=True, 
        blank=True,
        related_name='death_registrations'
    )
    
    # For Unregistered Patients (stored directly)
    unregistered_name = models.CharField(max_length=300, null=True, blank=True)
    unregistered_gender = models.CharField(max_length=20, null=True, blank=True)
    unregistered_age = models.CharField(max_length=20, null=True, blank=True)
    unregistered_address = models.TextField(null=True, blank=True)
    unregistered_phone = models.CharField(max_length=20, null=True, blank=True)
    
    # Common Death Details
    room = models.CharField(max_length=50, null=True, blank=True)
    admission_datetime = models.DateTimeField(null=True, blank=True)
    death_datetime = models.DateTimeField(null=True, blank=True)
    consulting_doctor = models.ForeignKey(Staffallocation, on_delete=models.SET_NULL, null=True, blank=True)
    
    # Additional Details (from unregistered patient registration)
    registration_date = models.DateField(null=True, blank=True)
    visit_date = models.DateField(null=True, blank=True)
    booking_number = models.CharField(max_length=100, null=True, blank=True)
    citizen_id = models.CharField(max_length=100, null=True, blank=True)
    uhid_no = models.CharField(max_length=100, null=True, blank=True)
    customer_type = models.CharField(max_length=50, null=True, blank=True)
    insurance_ref = models.CharField(max_length=100, null=True, blank=True)
    corporate_company = models.CharField(max_length=200, null=True, blank=True)
    staff_id = models.CharField(max_length=100, null=True, blank=True)
    privileged_customer_id = models.CharField(max_length=100, null=True, blank=True)
    aadhaar_number = models.CharField(max_length=12, null=True, blank=True)
    
    # Photo
    photo = models.ImageField(upload_to='death_reg_photos/', null=True, blank=True)
    
    # Registration Type
    registration_type = models.CharField(
        max_length=20,
        choices=[('registered', 'Registered'), ('unregistered', 'Unregistered')],
        default='registered'
    )
    
    # Audit Fields
    created_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        if self.patient:
            return f"Death - {self.patient.Patient_Name}"
        return f"Death - {self.unregistered_name or 'Unregistered'}"
    
    class Meta:
        ordering = ['-created_at']

class BirthRegister(models.Model):
    """Birth Registration Model"""
    
    # Mother's Details (FK to Patient_details - REQUIRED)
    mother = models.ForeignKey(
        Patient_details, 
        on_delete=models.CASCADE,
        related_name='birth_registrations',
        null=False,
        blank=False
    )

    # Birth Details
    gender = models.CharField(max_length=10, null=True, blank=True)
    date_time_of_birth = models.DateTimeField(null=True, blank=True)
    weight = models.CharField(max_length=20, null=True, blank=True)
    
    # Advanced Details
    blood_group = models.CharField(max_length=10, null=True, blank=True)
    guardian_address = models.TextField(null=True, blank=True)
    guardian_phone = models.CharField(max_length=20, null=True, blank=True)
    special_instructions = models.TextField(null=True, blank=True)
    file_location = models.TextField(null=True, blank=True)
    # New Born Flag
    is_new_born = models.BooleanField(default=True)
    # Photo
    photo = models.ImageField(upload_to='birth_reg_photos/', null=True, blank=True)
    
    # Audit Fields
    created_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True)
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    child_op = models.CharField(max_length=100,unique=True, null=True, blank=True)
    def __str__(self):
        return f"Birth - {self.mother.Patient_Name} - {self.date_time_of_birth}"
    
    class Meta:
        ordering = ['-created_at']

class Asset(models.Model):
    """
    Asset Master - Using only boolean flags
    """
    asset_id = models.CharField(max_length=100, unique=True, db_index=True)
    asset_name = models.CharField(max_length=300)
    description = models.TextField(blank=True, null=True)
    purchase_date = models.DateField(null=True, blank=True)
    asset_added_date = models.DateField(auto_now_add=True)
    manufacturer = models.CharField(max_length=300, blank=True, null=True)
    supplier = models.CharField(max_length=300, blank=True, null=True)
    
    branch = models.ForeignKey('Branch', on_delete=models.PROTECT, related_name='assets')
    added_by = models.ForeignKey(Staffdetails, on_delete=models.SET_NULL, null=True, blank=True)
    status = models.CharField(max_length=20,default='available')
    # ====== Boolean Flags Only ======
    is_available = models.BooleanField(default=True)
    is_transferred = models.BooleanField(default=False)
    is_under_maintenance = models.BooleanField(default=False)
    is_disposed = models.BooleanField(default=False)
    
    # ====== Audit ======
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    deleted = models.BooleanField(default=False)
    deleted_date = models.DateField(null=True, blank=True)
    deleted_by = models.ForeignKey('Staffallocation', on_delete=models.SET_NULL, null=True, blank=True)
    purchase_cost= models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    physical_location= models.CharField(max_length=200, blank=True, null=True)
    def __str__(self):
        return f"{self.asset_id} - {self.asset_name}"
    
    def save(self, *args, **kwargs):
        """Update boolean flags based on status"""
        self.is_available = (self.status == 'available')
        self.is_transferred = (self.status == 'transferred')
        self.is_under_maintenance = (self.status == 'maintenance')
        self.is_disposed = (self.status == 'disposed')
        super().save(*args, **kwargs)
    
    def set_status(self, new_status):
        """Set status with validation"""
        valid_statuses = ['available', 'transferred', 'maintenance', 'disposed']
        if new_status not in valid_statuses:
            raise ValueError(f"Invalid status. Must be one of: {', '.join(valid_statuses)}")
        self.status = new_status
        self.save()
    
    def soft_delete(self, staff):
        """Soft delete the asset (for disposal)"""
        self.deleted = True
        self.deleted_date = timezone.now().date()
        self.deleted_by = staff
        self.status = 'disposed'
        self.is_disposed = True
        self.is_available = False
        self.save()
        
        # Create audit log
        AssetAuditLog.objects.create(
            asset=self,
            action="DISPOSE",
            staff=staff,
            branch=self.branch,
            notes=f"Asset disposed by {staff.Staff.Staff_firstname}"
        )

class AssetTransfer(models.Model):
    """
    Asset Transfer History
    Tracks all asset transfers between branches/departments
    """
    
    # ====== Transfer Number (Auto) ======
    transfer_number = models.CharField(
        max_length=50, 
        unique=True,
        editable=False,
        help_text="Transfer Number (Auto)"
    )
    
    # ====== Asset being transferred ======
    asset = models.ForeignKey(
        Asset, 
        on_delete=models.PROTECT, 
        related_name='transfers',
        help_text="Asset"
    )
    
    
    # ====== Received By ======
    received_by = models.CharField(
        max_length=300, 
        blank=True, 
        null=True,
        help_text="Received By"
    )
    
    # ====== Transfer Date ======
    transfer_date = models.DateField(
        help_text="Transfer Date (No Future Date)"
    )
    
    # ====== Transferred By ======
    transferred_by = models.ForeignKey(
        'Staffallocation', 
        on_delete=models.SET_NULL, 
        null=True,
        related_name='assets_transferred',
        help_text="Transferred By (Login Staff)"
    )
    
    # ====== Remarks ======
    remarks = models.TextField(
        blank=True, 
        null=True,
        help_text="Remarks (Optional)"
    )
    
    # ====== Audit Fields ======
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    # ====== Edit Lock (Admin only edit) ======
    is_editable = models.BooleanField(
        default=True,
        help_text="Admin can edit if required"
    )

     # ====== Location Details ======
    branch = models.ForeignKey(
        'Branch', 
        on_delete=models.PROTECT,
        null=True, 
        blank=True,
        related_name='Branch',
    )
    from_department = models.ForeignKey(
        'Department', 
        on_delete=models.PROTECT, 
        null=True, 
        blank=True,
        related_name='asset_transfers_from',
    )
    to_department = models.ForeignKey(
        'Department', 
         on_delete=models.PROTECT, 
        null=True, 
        blank=True,
        related_name='asset_transfers_to',
    )

    
    def __str__(self):
        return f"{self.transfer_number} - {self.asset.asset_name}"


class AssetAuditLog(models.Model):
    """
    Audit trail for all asset actions
    """
    
    # ====== Using simple CharField for action ======
    action = models.CharField(
        max_length=20,
        help_text="Action: create / update / transfer / maintenance / dispose / restore"
    )
    
    # ====== Relationships ======
    asset = models.ForeignKey(
        Asset, 
        on_delete=models.CASCADE, 
        related_name='audit_logs'
    )
    staff = models.ForeignKey(
        'Staffallocation', 
        on_delete=models.SET_NULL, 
        null=True, 
        blank=True
    )
    branch = models.ForeignKey(
        'Branch', 
        on_delete=models.SET_NULL, 
        null=True, 
        blank=True
    )
    
    # ====== Change Tracking ======
    old_value = models.JSONField(default=dict, blank=True, null=True)
    new_value = models.JSONField(default=dict, blank=True, null=True)
    notes = models.TextField(blank=True, null=True)
    
    # ====== Timestamps ======
    action_date = models.DateField(default=timezone.now)
    action_time = models.TimeField(default=timezone.now)
    
    def formatted_time(self):
        return self.action_time.strftime("%I:%M %p")
    
    def __str__(self):
        return f"{self.action} - {self.asset.asset_id} on {self.action_date}"
    
    class Meta:
        ordering = ['-action_date', '-action_time']
        verbose_name = 'Asset Audit Log'
        verbose_name_plural = 'Asset Audit Logs'



class GoodsIssueNote(models.Model):
    """
    Goods Issue Note - For issuing items from inventory
    """
    gin_number = models.CharField(max_length=50, unique=True, editable=False)
    gin_date = models.DateField(default=timezone.now)
    
    # Branch (readonly - from session)
    branch = models.ForeignKey('Branch', on_delete=models.PROTECT, related_name='gin_branch')
    
    # Department and Staff
    department = models.ForeignKey('Department', on_delete=models.PROTECT, related_name='gin_departments')
    staff = models.ForeignKey('Staffdetails', on_delete=models.PROTECT, null=True, blank=True, related_name='gin_staff')
    
    # Reference
    reference_no = models.CharField(max_length=100, blank=True, null=True)
    remarks = models.TextField(blank=True, null=True)
    
    # Status
    status = models.CharField(max_length=20, default='issued', choices=[
        ('draft', 'Draft'),
        ('issued', 'Issued'),
        ('cancelled', 'Cancelled'),
    ])
    
    # Audit fields
    created_by = models.ForeignKey('Staffallocation', on_delete=models.SET_NULL, null=True, related_name='gin_created')
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return f"{self.gin_number} - {self.department.Department_Name}"
    
    class Meta:
        ordering = ['-gin_date', '-created_at']
        verbose_name = 'Goods Issue Note'
        verbose_name_plural = 'Goods Issue Notes'


class GoodsIssueNoteItem(models.Model):
    """
    Items in Goods Issue Note - Using Inventory Stock
    """
    gin = models.ForeignKey(GoodsIssueNote, on_delete=models.CASCADE, related_name='items')
    
    # Item details
    item_name = models.ForeignKey('inventorymaster', on_delete=models.PROTECT)
    company = models.ForeignKey('InventoryCompany', on_delete=models.PROTECT, null=True, blank=True)
    supplier = models.ForeignKey('supplier', on_delete=models.PROTECT, null=True, blank=True)
    
    # Stock details (from Inventorystockdetails)
    inventory_stock = models.ForeignKey('Inventorystockdetails', on_delete=models.PROTECT, null=True, blank=True)
    batch_no = models.CharField(max_length=500)
    unit = models.ForeignKey('unitdt', on_delete=models.PROTECT)
    quantity = models.IntegerField()
    rate = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    tax_percentage = models.DecimalField(max_digits=5, decimal_places=2, default=0.00)
    
    # MFG and Expiry
    manufacturer_date = models.DateField(null=True, blank=True)
    expiry_date = models.DateField(null=True, blank=True)
    
    # Total
    total_amount = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    
    def __str__(self):
        return f"{self.gin.gin_number} - {self.item_name.itemnm}"

class AppointmentStatus(models.Model):
    VISIT_TYPE_CHOICES = [
        ('Consultation', 'Consultation'),
        ('Followup', 'Followup'),
        ('Revisit', 'Revisit'),
        ('Whatsapp', 'Whatsapp'),
        ('Camp', 'Camp'),
    ]
    status_name = models.CharField(max_length=200,choices=VISIT_TYPE_CHOICES,unique=True)
    is_active = models.BooleanField(default=True)  # True = Active, False = Inactive
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    def __str__(self):
        return self.status_name
    
    class Meta:
        verbose_name_plural = 'Appointment Status'


class PatientVisitCycleLog(models.Model):
    """
    Master table for visit cycles - one record per consultation cycle
    """
    # Core identifiers
    patient = models.ForeignKey(Patient_details, on_delete=models.CASCADE, related_name='visit_cycles')
    doctor = models.ForeignKey(Staffdetails, on_delete=models.CASCADE, related_name='visit_cycles')
    branch = models.ForeignKey(Branch, on_delete=models.SET_NULL, null=True, blank=True)
    
    # Consultation information (the cycle start)
    consultation_date = models.DateField()
    consultation_appointment = models.ForeignKey('Appointments', on_delete=models.SET_NULL, null=True, blank=True, related_name='consultation_cycle')
    consultation_fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
    # Counts (aggregated from child records)
    consultation_count = models.IntegerField(default=1)
    revisit_count = models.IntegerField(default=0)
    followup_count = models.IntegerField(default=0)
    total_visits_in_cycle = models.IntegerField(default=1)
    
    # Aggregated fees
    total_fee_collected = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    total_revisit_fees = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    total_followup_fees = models.DecimalField(max_digits=12, decimal_places=2, default=0.00)
    
    # ===== SNAPSHOT OF SETTINGS =====
    consultation_days = models.IntegerField(default=0)
    revisit_days = models.IntegerField(default=0)
    max_revisit_count = models.IntegerField(default=0)
    followup_days = models.IntegerField(default=0)
    max_followup_count = models.IntegerField(default=0)
    
    consultation_fee_setting = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    revisit_fee_setting = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    followup_fee_setting = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
    # Current status
    current_appointment = models.ForeignKey('Appointments', on_delete=models.SET_NULL, null=True, blank=True, related_name='current_cycle')
    current_status = models.CharField(max_length=50, choices=[
        ('Consultation', 'Consultation'),
        ('Revisit', 'Revisit'),
        ('Followup', 'Followup'),
    ])
    days_from_consultation = models.IntegerField(default=0)
    
    # Cycle status
    is_cycle_active = models.BooleanField(default=True)
    is_cycle_closed = models.BooleanField(default=False)
    cycle_end_date = models.DateField(null=True, blank=True)
    cycle_closed_reason = models.CharField(max_length=50, null=True, blank=True, choices=[
        ('max_revisit_reached', 'Max Revisit Count Reached'),
        ('max_followup_reached', 'Max Followup Count Reached'),
        ('consultation_days_expired', 'Consultation Days Expired'),
        ('manual_close', 'Manually Closed'),
    ])
    
    # Timestamps
    created_at = models.DateTimeField(auto_now_add=True)
    updated_at = models.DateTimeField(auto_now=True)
    
    class Meta:
        ordering = ['-consultation_date', '-created_at']
        verbose_name_plural = 'Patient Visit Cycle Logs'
        indexes = [
            models.Index(fields=['patient', 'doctor']),
            models.Index(fields=['consultation_date']),
            models.Index(fields=['is_cycle_active']),
            models.Index(fields=['current_status']),
        ]
    
    def __str__(self):
        return f"{self.patient.Patient_Name} - Dr.{self.doctor.Staff_firstname} - {self.consultation_date}"


class PatientVisitCycleAppointment(models.Model):
    """
    Child table - Each appointment in a cycle
    This is the normalized way to track appointments
    """
    cycle = models.ForeignKey(PatientVisitCycleLog, on_delete=models.CASCADE, related_name='appointments')
    appointment = models.ForeignKey('Appointments', on_delete=models.CASCADE, related_name='cycle_appointments')
    
    # Status of this appointment within the cycle
    status = models.CharField(max_length=50)
    
    # Fee for this appointment
    fee = models.DecimalField(max_digits=10, decimal_places=2, default=0.00)
    
    # Order in the cycle (1st, 2nd, 3rd, etc.)
    order_in_cycle = models.IntegerField(default=0)
    
    # Days from consultation at this appointment
    days_from_consultation = models.IntegerField(default=0)
    
    created_at = models.DateTimeField(auto_now_add=True)
    
    class Meta:
        ordering = ['order_in_cycle', 'appointment__Appointment_date']
        verbose_name_plural = 'Cycle Appointments'
        indexes = [
            models.Index(fields=['cycle', 'status']),
            models.Index(fields=['appointment']),
        ]
    
    def __str__(self):
        return f"{self.cycle.patient.Patient_Name} - {self.status} - {self.appointment.Appointment_date}"