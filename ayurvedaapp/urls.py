from django.conf import settings
from django.conf.urls.static import static
from django.urls import path
from . import views

urlpatterns = [
    path('',views.staff_login,name = 'staff_login'),
    path('home/',views.home,name="home"),
    path('index/',views.index,name = 'index'),
    path('indexadmin/',views.indexadmin,name = 'indexadmin'),
    # path('indexroomavailbility/',views.indexroomavailbility,name='indexroomavailbility'),

    path('appointment/',views.appointment,name = 'appointment'),
    path('appointmenttable/',views.appointmenttable,name = 'appointmenttable'),
    path('editappointment/',views.editappointment,name = 'editappointment'),
    path('delappointment/',views.delappointment,name = 'delappointment'),
    path('todayappointment/',views.todayappointment,name='todayappointment'),
	path("get-rate/", views.get_rate, name="get_rate"),
    path("appointmentinvoice/", views.appointmentinvoice, name="appointmentinvoice"),


    path('prescription/',views.prescription,name = 'prescription'),
   
    path('batch/',views.batch,name = 'batch'),
    path('batchtable/',views.batchtable,name = 'batchtable'),
    path('editbatch/',views.editbatch,name = 'editbatch'),
    path('delbatch/',views.delbatch,name = 'delbatch'),
    # path('prescriptionnew/',views.prescriptionnew,name = 'prescriptionnew'),
    

    
    path('branch/',views.branch,name = 'branch'),
    path('branchtable/',views.branchtable,name = 'branchtable'),
    path('editbranch/',views.editbranch,name = 'editbranch'),
    path('delbranch/',views.delbranch,name = 'delbranch'),
    
    
    path('category/',views.category,name = 'category'),
    path('categorytable/',views.categorytable,name = 'categorytable'),
    path('editcategory/',views.editcategory,name = 'editcategory'),
    path('delcategory/',views.delcategory,name = 'delcategory'),
    
    
    path('city/',views.city,name = 'city'),
    path('citytable/',views.citytable,name = 'citytable'),
    path('editcity/',views.editcity,name = 'editcity'),
    path('delcity/',views.delcity,name = 'delcity'),
    
    
    path('Companymaster/',views.Companymaster,name = 'Companymaster'),
    path('companymastertable/',views.companymastertable,name = 'companymastertable'),
    path('editcompanymaster/',views.editcompanymaster,name = 'editcompanymaster'),
    path('delcampanymaster/',views.delcampanymaster,name = 'delcampanymaster'),
    
    
    path('countryform/',views.countryform,name = 'countryform'),
    path('countrytable/',views.countrytable,name = 'countrytable'),
    path('editcountryform/',views.editcountryform,name = 'editcountryform'),
    path('delcountry/',views.delcountry,name = 'delcountry'),
    
    
    path('dailytreatment/',views.dailytreatment,name = 'dailytreatment'),
    path('dailytreatmenttable/',views.dailytreatmenttable,name = 'dailytreatmenttable'),
    path('editdailytreatment/',views.editdailytreatment,name = 'editdailytreatment'),

    
    path('department/',views.department,name = 'department'),
    path('departmenttable/',views.departmenttable,name = 'departmenttable'),
    path('editdepartment/',views.editdepartment,name = 'editdepartment'),
    path('deldepartment/',views.deldepartment,name = 'deldepartment'),
    

    path('designation/',views.designation,name = 'designation'),
    path('designationtable/',views.designationtable,name = 'designationtable'),
    path('editdesignation/',views.editdesignation,name = 'editdesignation'),
    path('deldesignation/',views.deldesignation,name = 'deldesignation'),
    
    
    path('district/',views.district,name = 'district'),
    path('districttable/',views.districttable,name = 'districttable'),
    path('editdistrict/',views.editdistrict,name = 'editdistrict'),
    path('deldistrict/',views.deldistrict,name = 'deldistrict'),
    
    
    path('equipment/',views.equipment,name = 'equipment'),
    path('equipmenttable/',views.equipmenttable,name = 'equipmenttable'),
    path('editequipment/',views.editequipment,name = 'editequipment'),
    path('delequipment/',views.delequipment,name = 'delequipment'),
    
    
    path('hospital/',views.hospital,name = 'hospital'),
    path('itemmaster/',views.itemmaster,name = 'itemmaster'),
    path('itemtable/',views.itemtable,name = 'itemtable'),
    path('edititemmaster/',views.edititemmaster,name = 'edititemmaster'),
    path('delitemmaster/',views.delitemmaster,name = 'delitemmaster'),
    
    
    # path('packagedetails/',views.packagedetails,name = 'packagedetails'),
    # path('packagetable/',views.packagetable,name = 'packagetable'),
    # path('editpackagedetails/',views.editpackagedetails,name = 'editpackagedetails'),
    # path('delpkgedetls/',views.delpkgedetls,name = 'delpkgedetls'),
    
    
    # path('patientadmission/',views.patientadmission,name = 'patientadmission'),
    # path('patientadmissiontable/',views.patientadmissiontable,name = 'patientadmissiontable'),
    # path('editpatientadmission/',views.editpatientadmission,name = 'editpatientadmission'),
    # path('delpatientadmission/',views.delpatientadmission,name = 'delpatientadmission'),
    # path('admit_patient/<int:room_id>/', views.admit_patient, name='admit_patient'),
    
    
    path('patientdetails/',views.patientdetails,name = 'patientdetails'),
    path('patientdetailtable/',views.patientdetailtable,name = 'patientdetailtable'),
    path('editpatientdetails/',views.editpatientdetails,name = 'editpatientdetails'),
    path('delpatientdetls/',views.delpatientdetls,name = 'delpatientdetls'),
    path('adminpatientdetailtable/',views.adminpatientdetailtable,name = 'adminpatientdetailtable'),

    
    path('patienthistory/',views.patienthistory,name = 'patienthistory'),
    path('patienthistorytable/',views.patienthistorytable,name = 'patienthistorytable'),
    path('room/',views.room,name = 'room'),
    path('roomtable/',views.roomtable,name = 'roomtable'),
    path('editroom/',views.editroom,name = 'editroom'),
    path('delroom/',views.delroom,name = 'delroom'),
    
    
    
    path('staffallocation/',views.staffallocation,name = 'staffallocation'),
    path('staffallocationtable/',views.staffallocationtable,name = 'staffallocationtable'),
    path('editstaffallocation',views.editstaffallocation,name = 'editstaffallocation'),
    
    path('staffdetail/',views.staffdetail,name = 'staffdetail'),
    path('staffdetailtable/',views.staffdetailtable,name = 'staffdetailtable'),
    path('editstaffdetail/',views.editstaffdetail,name = 'editstaffdetail'),
    path('delstaffdetail/',views.delstaffdetail,name = 'delstaffdetail'),
    path('staffdetailadmintable/',views.staffdetailadmintable,name = 'staffdetailadmintable'),
    
    
    
    path('state/',views.state,name = 'state'),
    path('statetable/',views.statetable,name = 'statetable'),
    path('stateedit/',views.stateedit,name = 'stateedit'),
    path('delstate/',views.delstate,name = 'delstate'),
    
    path('get_booking_dates/',views.get_booking_dates, name='get_booking_dates'),
    #  path('get-booked-dates/<int:room_id>/',views.get_booked_dates, name='get_booked_dates'),
    # path('get_booked_dates/<int:room_id>/',views.get_booked_dates,name = 'get_booked_dates'),
    
    
    path('subcategory/',views.subcategory,name = 'subcategory'),
    path('subcategorytable/',views.subcategorytable,name = 'subcategorytable'),
    path('editsubcategory/',views.editsubcategory,name = 'editsubcategory'),
    path('delsubcategory/',views.delsubcategory,name = 'delsubcategory'),
    
    
    path('therapistappointment',views.therapistappointment,name = 'therapistappointment'),
    path('treatmentmaster/',views.treatmentmaster,name = 'treatmentmaster'),
    path('treatmenttable',views.treatmenttable,name = 'treatmenttable'),
    path('edittreatmentmaster',views.edittreatmentmaster,name = 'edittreatmentmaster'),
    path('deltreatmntmstr',views.deltreatmntmstr,name = 'deltreatmntmstr'),
    
    
    # path('patient/',views.patient,name = 'patient'),
    path('treatmentplan/',views.treatmentplan,name = 'treatmentplan'),
    path('treatmentplantable/',views.treatmentplantable,name = 'treatmentplantable'),
    
    path('savepatient/',views.savepatient,name = 'savepatient'),
    path('casehistory/',views.casehistory,name = 'casehistory'),

    path('prescription/preliminarydatatable.html',views.preliminarydatatable,name = 'preliminarydatatable'),
    # path('Prescription_casehistry/',views.Prescription_casehistry,name = 'Prescription_casehistry'),
    # path('viewpatientch/',views.viewpatientch,name = 'viewpatientch'),
    # path('test/',views.test,name = 'test'),
    # path('testprescriptionnew/',views.testprescriptionnew,name = 'testprescriptionnew'),

    path('prescription_form/',views.prescription_form,name = 'prescription_form'),
    path('discharge/',views.discharge,name = 'discharge'),
    path('dischargetable/',views.dischargetable,name = 'dischargetable'),


    
    # path('mark_room_as_available/<int:room_id>/', views.mark_room_as_available, name='mark_room_as_available'),
    # path('get_available_room/<str:selected_date>/',views.get_available_room,name = 'get_available_room'),
    # path('getbookcount/<str:selected_date>/',views.getbookcount,name = 'getbookcount'),
    # path('bookedroom/<str:selected_date>/',views.bookedroom,name = 'bookedroom'),
    # path('getadmissiondetails/<str:selected_date>/', views.get_admission_details, name='get_admission_details'),
    
    
    # path('get_booking_details/<str:selected_date>/', views.get_booking_details, name='get_booking_details'),
    path('bookingcancel', views.bookingcancel, name='bookingcancel'),
    path('booking_table/<str:start_date>/', views.booking_table, name='booking_table'),
    # path('getptdetails/<str:patientdt>/', views.getptdetails, name='getptdetails'),
    
    # path('check_discharge_and_availability/', views.check_discharge_and_availability, name='check_discharge_and_availability'),
    
   
    path('invoice/',views.invoice,name='invoice'),
    path('invoiceprint/',views.invoiceprint,name='invoiceprint'),
    path('invoicenewprint/',views.invoicenewprint,name='invoicenewprint'),
    path('invnew/',views.invnew,name="invnew"),
    
    path('search_company/',views.search_company,name='search_company'),
    # path('get_companies/',views.get_companies,name='get_companies'),
    path('get_companies/<int:medicine_id>/', views.get_companies, name='get_companies'),
    path('invoicenew/', views.invoicenew, name='invoicenew'),
    path('fetch_name_by_id/', views.fetch_name_by_id, name='fetch_name_by_id'),
    
    path('getmrdetails/', views.getmrdetails, name='getmrdetails'),
    path('saveinvoice/', views.saveinvoice, name='saveinvoice'),
    path('invprint/', views.invprint, name='invprint'),
  
    path('get_company_for_medicine/', views.get_company_for_medicine, name='get_company_for_medicine'),
    path('get_expiration_dates/', views.get_expiration_dates, name='get_expiration_dates'),

    # path('getptdetails/ ptid', views.getptdetails, name='getptdetails'),
    path('logout_view/',views.logout_view, name='logout_view'),
    path('designstff',views.designstff, name='designstff'),

    # path('get_roomdetails/<int:room_id>/',views.get_roomdetails,name = 'get_roomdetails'),

    path('enquirydetails/',views.enquirydetails,name="enquirydetails"),
    path('displayenquiry/',views.displayenquiry,name="displayenquiry"),
    path('enquiryedit/',views.enquiryedit,name="enquiryedit"),
    path('delenquiry/',views.delenquiry,name="delenquiry"),


    path('statusdetails/',views.statusdetails,name="statusdetails"),

    path('followupdt/',views.followupdt,name="followupdt"),
    path('getenqdetails/',views.getenqdetails,name="getenqdetails"),
    path('followupdetails/',views.followupdetails,name="followupdetails"),
    path('followuptable/',views.followuptable,name="followuptable"),


    # stock
    path('baseunitdt/',views.baseunitdt,name="baseunitdt"),
    path('baseunitdttable/',views.baseunitdttable,name="baseunitdttable"),
    path('saveunit/',views.saveunit,name="saveunit"),
    path('allunit/',views.allunit,name="allunit"),
    path('stockdt/',views.stockdt,name="stockdt"),
    path('allstore/',views.allstore,name="allstore"),
    path('physicalstk/',views.physicalstk,name="physicalstk"),
    path('physicaltable/',views.physicaltable,name="physicaltable"),

    path('medicinemasterdt/',views.medicinemasterdt,name="medicinemasterdt"),
    path('medicinemastertable/',views.medicinemastertable,name="medicinemastertable"),
    path('editmedicinemaster/',views.editmedicinemaster,name="editmedicinemaster"),

# supplier
    
    path('supplierdetails/',views.supplierdetails,name="supplierdetails"),
    path('supplertable/',views.supplertable,name="supplertable"),
    path('get_supplierdetails/',views.get_supplierdetails,name="get_supplierdetails"),
    path('editsupplier/', views.editsupplier, name='editsupplier'),
    # purchaseorder
    
    path('purchaseorderdetails/',views.purchaseorderdetails,name="purchaseorderdetails"),
    path('get_units/',views.get_units,name="get_units"),
    # path('get_purchase_order_details/',views.get_purchase_order_details,name="get_purchase_order_details"),
    # grn

    path('grndetails/',views.grndetails,name="grndetails"),
    path('inv/',views.inv,name="inv"),
    path('insert_excel_data/',views.insert_excel_data,name="insert_excel_data"), 
    path('insert_stock_data/',views.insert_stock_data,name="insert_stock_data"),
    path('insert_supplier_data/',views.insert_supplier_data,name="insert_supplier_data"),
    
    path('insert_item_data/',views.insert_item_data,name="insert_item_data"),
    path('storestockentry/',views.storestockentry,name="storestockentry"),
    path('editstock/',views.editstock,name="editstock"),


    path('search/',views.search_medicine, name='search_medicine'),
    path('get_base_units/',views.get_base_units, name='get_base_units'),
    path('itemdetails_get_base_units/',views.itemdetails_get_base_units, name='itemdetails_get_base_units'),
    path('find_quantity/',views.find_quantity, name='find_quantity'),
    path('insert_excelcompanyname_data/',views.insert_excelcompanyname_data, name='insert_excelcompanyname_data'),
    path('insert_category_data/',views.insert_category_data, name='insert_category_data'),
    path('insert_medicinemaster_data/',views.insert_medicinemaster_data, name='insert_medicinemaster_data'), 


    path('reorderlevel/',views.reorderlevel, name='reorderlevel'),
    path('search_company/',views.search_company, name='search_company'),
    path('get_reorder_level/',views.get_reorder_level, name='get_reorder_level'),
    path('expiredmedicine/',views.expiredmedicine, name='expiredmedicine'),
    path('search_unit/',views.search_unit, name='search_unit'),
    # path('generate_pdf/',views.generate_pdf, name='generate_pdf'),
    path('reorderview/',views.reorderview, name='reorderview'),
    path('editreorder/',views.editreorder, name='editreorder'),
    
    

    # invoice  list
    path('invlist/',views.invlist, name='invlist'),
    path('invview/',views.invview, name='invview'),
    path('insert_unit_data/',views.insert_unit_data, name='insert_unit_data'),
    path('insert_reorder_data/',views.insert_reorder_data, name='insert_reorder_data'),
    path('cancel_invoice/',views.cancel_invoice, name='cancel_invoice'),
    path('restock_items/<int:invoice_id>/', views.restock_items, name='restock_items'),
    path('pharmacyindex/', views.pharmacyindex, name='pharmacyindex'),
    path('purchase_order_items/', views.purchase_order_items, name='purchase_order_items'),
    path('grn_details/', views.grn_details, name='grn_details'),

# treatment
    path('treatmentinvoice/', views.treatmentinvoice, name='treatmentinvoice'),
    path('fetch_nametreatment_by_id/', views.fetch_nametreatment_by_id, name='fetch_nametreatment_by_id'),
    path('search_treatment/', views.search_treatment, name='search_treatment'),
    path('savetreatmentinvoice/', views.savetreatmentinvoice, name='savetreatmentinvoice'),
    path('treatmentinvprint/', views.treatmentinvprint, name='treatmentinvprint'),
    path('treatmentlist/', views.treatmentlist, name='treatmentlist'),
    path('treatmentview/', views.treatmentview, name='treatmentview'),
    
    # prescription
    path('doctorprescriptions/', views.doctorprescriptions, name='doctorprescriptions'),
    path('fetchmedicnedt/', views.fetchmedicnedt, name='fetchmedicnedt'),
    path('saveprescription/', views.saveprescription, name='saveprescription'),
    path('viewpreviousprescriptions/', views.view_previous_prescriptions, name='view_previous_prescriptions'),
    path('editunit/', views.editunit, name='editunit'),
    path('get_unique_prescription_dates/', views.get_unique_prescription_dates, name='get_unique_prescription_dates'),
    path('get_prescription_details/', views.get_prescription_details, name='get_prescription_details'),
    path('casehistoryable/', views.casehistoryable, name='casehistoryable'),
    path('get_currentstock/', views.get_currentstock, name='get_currentstock'),
    path('currentreorderlist/', views.currentreorderlist, name='currentreorderlist'),
   
    # Role Based security
    path('menuheading/', views.menuheading, name='menuheading'),
    path('menuheaidngtable/', views.menuheaidngtable, name='menuheaidngtable'),
    path('editmenuheading/', views.editmenuheading, name='editmenuheading'),
    path('delmenuheading/', views.delmenuheading, name='delmenuheading'),
    path('menu/', views.menu, name='menu'),
    path('menutable/', views.menutable, name='menutable'),
    path('menuedit/', views.menuedit, name='menuedit'),
    path('delmenu/', views.delmenu, name='delmenu'),
    path('roledetails/', views.roledetails, name='roledetails'),
    path('roledetailstable/', views.roledetailstable, name='roledetailstable'),
    path('editrole/', views.editrole, name='editrole'),
    path('delrole/', views.delrole, name='delrole'),
    path('roleassigndt/', views.roleassigndt, name='roleassigndt'),
    path('get-staff-by-branch/', views.get_staff_by_branch, name='get_staff_by_branch'),
    path('roleassigntable/', views.roleassigntable, name='roleassigntable'),
    path('editroleassign/', views.editroleassign, name='editroleassign'),
    path('delroleassgn/', views.delroleassgn, name='delroleassgn'),
    path('menu_list/', views.menu_list, name='menu_list'),
    path('menumanagements/', views.menumanagements, name='menumanagements'),
    # path('usermenu/', views.usermenu, name='usermenu'),
# medicinelist
    path('dailymedicinesale/', views.dailymedicinesale, name='dailymedicinesale'),
    path('medicines-sold-on-date/', views.medicines_sold_on_date, name='medicines_sold_on_date'),
    path('salereturn/', views.salereturn, name='salereturn'),
    path('process_return/', views.process_return, name='process_return'),
    path('creditnotedt/', views.creditnotedt, name='creditnotedt'),
    path('getinvdetails/', views.getinvdetails, name='getinvdetails'),
    path('search_invoiceitemresale/', views.search_invoiceitemresale, name='search_invoiceitemresale'),
    path('get_invoice_details/', views.get_invoice_details, name='get_invoice_details'),
    path('savecreditinvoice/', views.savecreditinvoice, name='savecreditinvoice'),
    path('opvitals/', views.opvitals, name='opvitals'),
    path('opvitalstable/', views.opvitalstable, name='opvitalstable'),
    path('dailytreatmentrecord/', views.dailytreatmentrecord, name='dailytreatmentrecord'),
    path('dailymedicinerecordsave/', views.dailymedicinerecordsave, name='dailymedicinerecordsave'),
    path('viewvitals/', views.viewvitals, name='viewvitals'),
    path('get_dailyreport_details/', views.get_dailyreport_details, name='get_dailyreport_details'),
    path('search_mrno/', views.search_mrno, name='search_mrno'),
    path('get_staff_by_department/', views.get_staff_by_department, name='get_staff_by_department'),
    path('appointmentafterreg/', views.appointmentafterreg, name='appointmentafterreg'),
    path('case/', views.case, name='case'),
    path('reportstock/', views.reportstock, name='reportstock'),
    path('dailyvitalsforip/', views.dailyvitalsforip, name='dailyvitalsforip'),
    path('test/', views.test, name='test'),
    path('search_staff/', views.search_staff, name='search_staff'),
    path('dailytreatmentdetails/', views.dailytreatmentdetails, name='dailytreatmentdetails'),
    path('set_logout_session/', views.set_logout_session, name='set_logout_session'),
    path('testack/', views.testack, name='testack'),
    path('treatmentcancel/', views.treatmentcancel, name='treatmentcancel'),
    path('consultinvoice/', views.consultinvoice, name='consultinvoice'),
    path('saveconsultation/', views.saveconsultation, name='saveconsultation'),
    path('consltprint/', views.consltprint, name='consltprint'),
    path('consltinvlist/', views.consltinvlist, name='consltinvlist'),
    path('cnsltinvview/', views.cnsltinvview, name='cnsltinvview'),
    path('consultationcancel/', views.consultationcancel, name='consultationcancel'),
    path('error/', views.error_page, name='error_page'),
    path('editbaseunit/', views.editbaseunit, name='editbaseunit'),
    path('editstore/', views.editstore, name='editstore'),
    path('get_user_menu_data/', views.get_user_menu_data, name='get_user_menu_data'),
    path('fetch_permissions/', views.fetch_permissions, name='fetch_permissions'),
    path('ipconvertion/', views.ipconvertion, name='ipconvertion'),
    path('ipbill/', views.ipbill, name='ipbill'),
    path('getipbillmrdetails/', views.getipbillmrdetails, name='getipbillmrdetails'),
    # path('get_admitted_date/', views.get_admitted_date, name='get_admitted_date'),
    path('prescriptionsearch_medicine/', views.prescriptionsearch_medicine, name='prescriptionsearch_medicine'),

    
    path('search_patient/', views.search_patient, name='search_patient'),
    path('patient_detailss/', views.patient_detailss, name='patient_detailss'),
    path('search-patient-limited/', views.search_patient_limited, name='search_patient_limited'),
    # path('ptstff/', views.ptstff, name='ptstff'),
   
    path('savecasehistory/', views.savecasehistory, name='savecasehistory'),
    path('savepersonalinfo/', views.savepersonalinfo, name='savepersonalinfo'),
    path('savemedicalreport/', views.savemedicalreport, name='savemedicalreport'),
    path('get_personal_info/<str:mrno>/', views.get_personal_info, name='get_personal_info'),
    path('savedoctorprescription/', views.savedoctorprescription, name='savedoctorprescription'),
    path('newview_previous_prescriptions/',views.newview_previous_prescriptions, name='newview_previous_prescriptions'),

    # path('newview_previous_prescriptions/<str:mrno>/', views.newview_previous_prescriptions, name='newview_previous_prescriptions'),
    path('prescription_details/<int:mrno>/<str:date>/', views.prescription_details, name='prescription_details'),
    path('viewcasehstrymedreport/<str:mrno>/', views.viewcasehstrymedreport, name='viewcasehstrymedreport'),
    path('medicalreport_details/<int:mrno>/<str:date>/', views.medicalreport_details, name='medicalreport_details'),
    path('nextreatment/', views.nextreatment, name='nextreatment'),
    path('save_treatment_details/', views.save_treatment_details, name='save_treatment_details'),
    path('get_staff_by_branch/', views.get_staff_by_branch, name='get_staff_by_branch'),
    path('nexacasehistoryable/', views.nexacasehistoryable, name='nexacasehistoryable'),
    path('savetax/', views.savetax, name='savetax'),
    path('taxtable/', views.taxtable, name='taxtable'),
    path('edittax/', views.edittax, name='edittax'),
    path('search_handled_by/', views.search_handled_by, name='search_handled_by'),
    path('treatmentlist/', views.treatmentlist, name='treatmentlist'),
    path('searchpharmacymedicine/', views.searchpharmacymedicine, name='searchpharmacymedicine'),
    path('create_invoice/', views.create_invoice, name='create_invoice'),
	
    path('oldget_staff_by_branch/', views.oldget_staff_by_branch, name='oldget_staff_by_branch'),
    path('nexcasehistory/', views.nexcasehistory, name='nexcasehistory'),

	path('hospital_list_view/', views.hospital_list_view, name='hospital_list_view'),
    path('edithospital/', views.edithospital, name='edithospital'),
	
    path('sourcedt/', views.sourcedt, name='sourcedt'),
    path('sourcedttable/', views.sourcedttable, name='sourcedttable'),
    path('editsource/', views.editsource, name='editsource'),
    path('search-medications/', views.search_medications, name='search_medications'),
   
    path('viewcasehistory/', views.viewcasehistory, name='viewcasehistory'),
  
    path('get_patient_history/<int:mrno_id>/', views.get_patient_history, name='get_patient_history'),
    
    path('check_patient_status/', views.check_patient_status, name='check_patient_status'),
    
    path('trash_enquiries/', views.trash_enquiries, name='trash_enquiries'),
    path('restore/<int:enquiry_id>/', views.restore_enquiry, name='restore_enquiry'),
    path('permanent_delete/<int:enquiry_id>/', views.permanent_delete_enquiry, name='permanent_delete_enquiry'),

    path('followupcasehistory/', views.followupcasehistory, name='followupcasehistory'),
    path('get_casepatient_history/', views.get_casepatient_history, name='get_casepatient_history'),
    path('add_diet/', views.add_diet, name='add_diet'),
    path('edit_diet/', views.edit_diet, name='edit_diet'),
    
    path('diettable/', views.diettable, name='diettable'),
    path('todayremaindertable/', views.todayremaindertable, name='todayremaindertable'),
    path('todaymedicalfollowup/', views.todaymedicalfollowup, name='todaymedicalfollowup'),
    path('view_patient_history/<int:mrno_id>/', views.view_patient_history, name='view_patient_history'),
    path('get_patientfollowup_history/<int:mrno_id>/', views.get_patientfollowup_history, name='get_patientfollowup_history'),

	
    path('newcasehistory/', views.newcasehistory, name='newcasehistory'),
    path('addcasehistory/', views.addcasehistory, name='addcasehistory'),
    path('case-history/', views.case_history_list, name='case_history_list'),
    path('view_case_history/', views.view_case_history, name='view_case_history'),
    path('case-history-edit/<int:pk>/', views.edit_case_history, name='edit_case_history'),
    path('save_followup/', views.save_followup, name='save_followup'),
    path('get_assigned_doctor/', views.get_assigned_doctor, name='get_assigned_doctor'),
    
   
    path('treatmentlistrecord/', views.treatmentlistrecord, name='treatmentlistrecord'),
    
    path('fetch-reports/', views.fetch_reports, name='fetch_reports'),    # 
    path('dailyinc/', views.dailyinc, name='dailyinc'),
    path('generate_income_graph/<str:selected_date>/', views.generate_income_graph, name='generate_income_graph'),
    path('monthreport/', views.monthreport, name='monthreport'),
    path('delsourcedetls/',views.delsourcedetls,name = 'delsourcedetls'),
    
    path('delstockdetls/',views.delstockdetls,name = 'delstockdetls'),
    path('enquirycalldetails/',views.enquirycalldetails,name = 'enquirycalldetails'),
    path('get-staff/', views.get_staff_by_branch_and_designation, name='get_staff_by_branch_and_designation'),
    


    path('search_treatmentcasehistory/',views.search_treatmentcasehistory,name = 'search_treatmentcasehistory'),
    path('remove_treatment/<int:treatment_id>/',views.remove_treatment, name='remove_treatment'),

   
    # ip
    path("ippatient/", views.ippatient, name="ippatient"),
    path("admission/", views.admission, name="admission"),
    path("search_ipptmrno/", views.search_ipptmrno, name="search_ipptmrno"),
    path("get_available_rooms/", views.get_available_rooms, name="get_available_rooms"),
    
    path("iptable/", views.iptable, name="iptable"),
    path("ipdaily/", views.ipdaily, name="ipdaily"),
    path("ipsearch_mrno/", views.ipsearch_mrno, name="ipsearch_mrno"),
    path("get_available_accommodations/", views.get_available_accommodations, name="get_available_accommodations"),
    path("patient_room_booking_list/", views.patient_room_booking_list, name="patient_room_booking_list"),
    
    path("fetch_medicines/", views.fetch_medicines, name="fetch_medicines"),
    path("save_treatment_and_medicine/", views.save_treatment_and_medicine, name="save_treatment_and_medicine"),
   
    path('ip_full_details/', views.ip_full_details, name='ip_full_details'),
    path("ipdttable/", views.ipdttable, name="ipdttable"),
   
    

    
    path('dashdbpatientdetailtable/',views.dashdbpatientdetailtable, name='dashdbpatientdetailtable'),
    
	path("ipbillsearch_mrno/",views.ipbillsearch_mrno ,name="ipbillsearch_mrno"),
    # path("consildateipsearch_mrno/",views.consildateipsearch_mrno ,name="consildateipsearch_mrno"),
   
    path('search_ip_patient_details/',views.search_ip_patient_details, name='search_ip_patient_details'),
    
    path('dashdbpatientdetailtable/',views.dashdbpatientdetailtable, name='dashdbpatientdetailtable'),
    path('ipinvoiceprint/',views.ipinvoiceprint, name='ipinvoiceprint'),
    
   
    path('check_discharge_status/',views.check_discharge_status, name='check_discharge_status'),
    
    path('check-patient/', views.check_patient_exists, name='check_patient_exists'),
    path('followup/',views.followup_page, name='followup_page'),
    path('delcasehistory/', views.delcasehistory, name='delcasehistory'),
    path('get_current_room_info/', views.get_current_room_info, name='get_current_room_info'),
    path('changeroom/', views.changeroom, name='changeroom'),
    path('changeroompatientdetails/', views.changeroompatientdetails, name='changeroompatientdetails'),
	path('ipnew/',views.ipnew,name="ipnew"),

    path('ipbillexpand/', views.ipbillexpand, name='ipbillexpand'),
    path('ipbill_detail_view/',views.ipbill_detail_view, name='ipbill_detail_view'),
    path('delete_other_service/', views.delete_other_service, name='delete_other_service'),
    path('search_ip_expanded/', views.search_ip_expanded, name='search_ip_expanded'),
    path('search_current_admitted_patients/',views.search_current_admitted_patients, name='search_current_admitted_patients'),
    path('editroomadmission/',views.editroomadmission, name='editroomadmission'),
  
    # path('packageelements/',views.packageelements, name='packageelements'),
    # path('packageelementstable/',views.packageelementstable, name='packageelementstable'),
    # path('editpackage/',views.editpackage, name='editpackage'),
    # path('delpackagedtdetls/',views.delpackagedtdetls, name='delpackagedtdetls'), 
	path('printsummary/', views.printsummary, name='printsummary'),
    path('edit_ippatient/', views.edit_ippatient, name='edit_ippatient'),
	path('discharge_summary/', views.discharge_summary, name='discharge_summary'),
    path('advance-bill/', views.advance_payment_bill, name='advance_payment_bill'),
    path('cancel_booking/', views.cancel_booking, name='cancel_booking'),
    path('dashboarddetails/',views.dashboarddetails,name = 'dashboarddetails'),
    path('dashboard_list/',views.dashboard_list,name = 'dashboard_list'),
    path('dashboardmenu/',views.dashboardmenu,name = 'dashboardmenu'),
    
    # path('duepayemnt/', views.duepayemnt, name='duepayemnt'),
    # path('dueprintt/', views.dueprint, name='dueprint'),
    # path('ipsearch_patinetwithpackage/', views.ipsearch_patinetwithpackage, name='ipsearch_patinetwithpackage'),
    # path('patientpackageextendeddtsave/', views.patientpackageextendeddtsave, name='patientpackageextendeddtsave'),
    # path('packagepaymenttable/', views.packagepaymenttable, name='packagepaymenttable'),
    # path('indivigualpatientpackagepayemnthistory/', views.indivigualpatientpackagepayemnthistory, name='indivigualpatientpackagepayemnthistory'),
    # path('extendedprint/', views.extendedprint, name='extendedprint'),

 	path('treatmentroom/', views.treatmentroom, name='treatmentroom'),
    path('treatmentroomtable/', views.treatmentroomtable, name='treatmentroomtable'),
    path('treatmenteditroom/', views.treatmenteditroom, name='treatmenteditroom'),
    
    path('treatment_room_booking/', views.treatment_room_booking, name='treatment_room_booking'),
    path('treatment_booking_list/', views.treatment_booking_list, name='treatment_booking_list'),
    path('get_bookings_json/', views.get_bookings_json, name='get_bookings_json'),
    path('cancel_treatmentroombooking/', views.cancel_treatmentroombooking, name='cancel_treatmentroombooking'),
    path('treatmentroombookingtable/', views.treatmentroombookingtable, name='treatmentroombookingtable'),
    path('treatmenteditroombooking/', views.treatmenteditroombooking, name='treatmenteditroombooking'),
    
    path('get-assigned-dashboards/',views.get_assigned_dashboards,name = 'get_assigned_dashboards'),
    path('assign_dashboard_to_role/',views.assign_dashboard_to_role,name = 'assign_dashboard_to_role'),

	path('proceduredetails/', views.proceduredetails, name='proceduredetails'),
    path('treatment_timeslot_booking/', views.treatment_timeslot_booking, name='treatment_timeslot_booking'),
    path('treatment_timetable_view/', views.treatment_timetable_view, name='treatment_timetable_view'),
    
    # oppatient
    path('oppatientdetails/',views.oppatientdetails,name = 'oppatientdetails'),
    path('opadvance_payment_bill/',views.opadvance_payment_bill,name = 'opadvance_payment_bill'),
    path('optable/',views.optable,name = 'optable'),
    path('edit_oppatient/',views.edit_oppatient,name = 'edit_oppatient'),
    path('opdueprint/',views.opdueprint,name = 'opdueprint'),
    path('opduepayemnt/',views.opduepayemnt,name = 'opduepayemnt'),
    path('opsearch_patinetwithpackage/',views.opsearch_patinetwithpackage,name = 'opsearch_patinetwithpackage'),


    path('revenue_dashboard/',views.revenue_dashboard,name = 'revenue_dashboard'),
	path('individual_payment_receipt/', views.individual_payment_receipt, name='individual_payment_receipt'),
    
    path('patientdetailtable_data/', views.patientdetailtable_data, name='patientdetailtable_data'),
    
    path('create_casehistory/', views.create_casehistory, name='create_casehistory'),
    path('edit-case-history/', views.edit_case_history, name='edit_casehistory'),
    path('delete-complaint/', views.delete_case_history, name='delete_casehistory'),
    path('delete_treatment_plan/', views.delete_treatment_plan, name='delete_treatment_plan'),
    path('create_casehistorydoctorsnote/', views.create_casehistorydoctorsnote, name='create_casehistorydoctorsnote'),
    path('create_casehistorydietplan/', views.create_casehistorydietplan, name='create_casehistorydietplan'),
    path('create_casehistorymedsurgicalhistory/', views.create_casehistorymedsurgicalhistory, name='create_casehistorymedsurgicalhistory'),

    path('gethistorydetails/', views.gethistorydetails, name='gethistorydetails'),
    path('update_medical_history/', views.update_medical_history, name='update_medical_history'),
    path('update_surgical_history/', views.update_surgical_history, name='update_surgical_history'),

    path('get_casehistory/', views.get_casehistory, name='get_casehistory'),
    path('treatment_search/', views.treatment_search, name='treatment_search'),

    path('testmaster/', views.testmaster, name='testmaster'),
    path('testmasteredit/', views.testmasteredit, name='testmasteredit'),
    path('testmastertable/', views.testmastertable, name='testmastertable'),
    path('testchild/', views.testchild, name='testchild'),
    path('testchildtable/', views.testchildtable, name='testchildtable'),
    path('testchild_edit/', views.testchild_edit, name='testchild_edit'),
    path('lab_test_requisition/', views.lab_test_requisition, name='lab_test_requisition'),
    path('create_casehistorylabtestrequisition/', views.create_casehistorylabtestrequisition, name='create_casehistorylabtestrequisition'),
    path('lab_invoice/', views.lab_invoice_view, name='lab_invoice'),
    path("medicine-search/", views.medicine_search, name="medicine_search"),
    path("create_casehistoryprescription/", views.create_casehistoryprescription, name="create_casehistoryprescription"),
    path('caseview/', views.caseview, name='caseview'),
    path('patient_history/', views.patient_history, name='patient_history'),
    path('get_patient_full_history/', views.get_patient_full_history, name='get_patient_full_history'),
    path('get_test_normal_values/', views.get_test_normal_values, name='get_test_normal_values'),
    path('search_treatments/', views.search_treatments, name='search_treatments'),
    path('patientdetailtable_data/', views.patientdetailtable_data, name='patientdetailtable_data'),
    
    path('get_patient_prescriptions/', views.get_patient_prescriptions, name='get_patient_prescriptions'),
    path('create_casehistoryvitals/', views.create_casehistoryvitals, name='create_casehistoryvitals'),
    path('save_casehistorytreatmentsplan/', views.save_casehistorytreatmentsplan, name='save_casehistorytreatmentsplan'),
    path('search_labtests/', views.search_labtests, name='search_labtests'),
    path('save_lab_invoice/', views.save_lab_invoice, name='save_lab_invoice'),
    path('save_lab_results/', views.save_lab_results, name='save_lab_results'),
    path('search_lab_tests/', views.search_lab_tests, name='search_lab_tests'),
    path('get_patient_lab_tests/', views.get_patient_lab_tests, name='get_patient_lab_tests'),
    path('testmasteredit/', views.testmasteredit, name='testmasteredit'),
    path('lab_invoice_print/', views.lab_invoice_print, name='lab_invoice_print'),

    path('normalevaluesave/', views.normalevaluesave, name='normalevaluesave'),
    path("normal_value_list/", views.normal_value_list, name="normal_value_list"),
    path('normal-value-edit/', views.normal_value_edit, name='normal_value_edit'),  # Single URL for edit
    path('lab_unit_list/', views.lab_unit_list, name='lab_unit_list'),
    path('lab_unit_create/', views.lab_unit_create, name='lab_unit_create'),
    path('lab_unit_edit/', views.lab_unit_edit, name='lab_unit_edit'),


	path('get_patient_prescriptionsinv/', views.get_patient_prescriptionsinv, name='get_patient_prescriptionsinv'),
    path('dailyrevenue_dashboard/',views.dailyrevenue_dashboard,name='dailyrevenue_dashboard'),

    
    path('vitals/',views.vitals,name='vitals'),
    path('labresultadd/',views.labresultadd,name = 'labresultadd'),
    
    path('food/', views.food_list, name='food_list'),
    path('food_create/', views.food_create, name='food_create'),
    path('header_detail/', views.header_detail, name='header_detail'),

    
    path('invoiceprescrition/', views.invoiceprescrition, name='invoiceprescrition'),
    path('pharmacyqueue/', views.pharmacyqueue, name='pharmacyqueue'),
    path('pharmacy_invoice/', views.pharmacy_invoice, name='pharmacy_invoice'),
    path('printoption/', views.printoption, name='printoption'),
    path('termalinvprint/', views.termalinvprint, name='termalinvprint'),
    
    path('previouscasehistory/', views.previouscasehistory, name='previouscasehistory'),
    path('case_history_listforpharmacy/', views.case_history_listforpharmacy, name='case_history_listforpharmacy'),
    
	path('get_prescription_details/', views.get_prescription_details, name='get_prescription_details'),
    path('update_prescription/', views.update_prescription, name='update_prescription'),
    path('delete_prescription/', views.delete_prescription, name='delete_prescription'),
    path('get_diagnosis_details/', views.get_diagnosis_details, name='get_diagnosis_details'),
    path('update_diagnosis/', views.update_diagnosis, name='update_diagnosis'),
    path("transactiondash/", views.transactiondash, name="transactiondash"),
    
    path('appointment_invlist/', views.appointment_invlist, name='appointment_invlist'),
    path('appointment_invview/', views.appointment_invview, name='appointment_invview'),
    
     
# casehistdit
    path('get_vitals_details/', views.get_vitals_details, name='get_vitals_details'),
    path('update_vitals/', views.update_vitals, name='update_vitals'),
    path('get_history_details/', views.get_history_details, name='get_history_details'),
    path('update_history/', views.update_history, name='update_history'),
    
     # labresult
    path('get_pending_labtests/', views.get_pending_labtests, name='get_pending_labtests'),
    path('pharmacyinvoicereport/', views.pharmacyinvoicereport, name='pharmacyinvoicereport'),
   
    path("previouscasehistory_list/", views.previouscasehistory_list, name="previouscasehistory_list"),

    path('check_patient_appointment/', views.check_patient_appointment, name='check_patient_appointment'),
    path('create_appointment_for_prescription/', views.create_appointment_for_prescription, name='create_appointment_for_prescription'),
    path("prescription_list/", views.prescription_list, name="prescription_list"),
    
    
    path("todays_labtests/", views.todays_labtests, name="todays_labtests"),
    path("currentlabentry/", views.currentlabentry, name="currentlabentry"),
    path("store_lab/", views.store_lab, name="store_lab"),
    
    path('a5print/', views.a5print, name='a5print'),
    path('newtaxprintoption/', views.newtaxprintoption, name='newtaxprintoption'),
    path('newtaxtermalinvprint/', views.newtaxtermalinvprint, name='newtaxtermalinvprint'),
    
    path('new_pharmacy_invoice/', views.new_pharmacy_invoice, name='new_pharmacy_invoice'),
    path('search_new_medicine/', views.search_new_medicine, name='search_new_medicine'),
    path('search_available_stock/', views.search_available_stock, name='search_available_stock'),

	path('newtaxinvview/', views.newtaxinvview, name='newtaxinvview'),
    path('newtaxinvlist/', views.newtaxinvlist, name='newtaxinvlist'),
    path('newtaxinvedit/', views.newtaxinvedit, name='newtaxinvedit'),

    
    
  	path('cancel_invoicefrompharmacy/', views.cancel_invoicefrompharmacy, name='cancel_invoicefrompharmacy'),
    path('restock_itemsfrompharmacy/<int:invoice_id>/', views.restock_itemsfrompharmacy, name='restock_itemsfrompharmacy'),
    
    path('cancel_newtaxinvoice/', views.cancel_newtaxinvoice, name='cancel_newtaxinvoice'),
    path('restock_itemsfromnewtax/<int:invoice_id>/', views.restock_itemsfromnewtax, name='restock_itemsfromnewtax'),
    
    path('add_medicinerate/', views.add_medicinerate, name='add_medicinerate'),
    
    path('salesreport/', views.salesreport, name='salesreport'),
    
    path('inventorycategory/',views.inventorycategory,name = 'inventorycategory'),
    path('inventorycategorytable/',views.inventorycategorytable,name = 'inventorycategorytable'),
    path('inventoryeditcategory/',views.inventoryeditcategory,name = 'inventoryeditcategory'),
    path('inventorydelcategory/',views.inventorydelcategory,name = 'inventorydelcategory'),


    path('InventoryCompanymaster/',views.InventoryCompanymaster,name = 'InventoryCompanymaster'),
    path('inventorycompanymastertable/',views.inventorycompanymastertable,name = 'inventorycompanymastertable'),
    path('inventoryeditcompanymaster/',views.inventoryeditcompanymaster,name = 'inventoryeditcompanymaster'),
    path('inventorydelcampanymaster/',views.inventorydelcampanymaster,name = 'inventorydelcampanymaster'),


    path('inventorymasterdt/',views.inventorymasterdt,name="inventorymasterdt"),
    path('inventorymedicinemastertable/',views.inventorymedicinemastertable,name="inventorymedicinemastertable"),
    path('inventoryeditmedicinemaster/',views.inventoryeditmedicinemaster,name="inventoryeditmedicinemaster"),

    path('inventorystockentry/',views.inventorystockentry,name="inventorystockentry"),
    path('inventoryphysicaltable/',views.inventoryphysicaltable,name="inventoryphysicaltable"),
    path('inventoryeditstock/',views.inventoryeditstock,name="inventoryeditstock"),

    path('inventoryreorderlevel/',views.inventoryreorderlevel, name='inventoryreorderlevel'),
    path('inventoryreorderview/',views.inventoryreorderview, name='inventoryreorderview'),
    path('inveditreorder/',views.inveditreorder, name='inveditreorder'),
    
    path('inventory_invoice/', views.inventory_invoice, name='inventory_invoice'),
    path('searchinventorymedicine/', views.searchinventorymedicine, name='searchinventorymedicine'),

    path('inva5print/', views.inva5print, name='inva5print'),
    path('inventoryprintoption/', views.inventoryprintoption, name='inventoryprintoption'),
    path('invtermalinvprint/', views.invtermalinvprint, name='invtermalinvprint'),

	path('daily_sales_report/', views.daily_sales_report, name='daily_sales_report'),
    
    path('get_patient_visit_history/', views.get_patient_visit_history, name='get_patient_visit_history'),
    
    path('get_patient_vitals_history/', views.get_patient_vitals_history, name='get_patient_vitals_history'),
    
    path('get_patientbased_full_history/', views.get_patientbased_full_history, name='get_patientbased_full_history'),
    
    
	path('casehistory_view/', views.casehistory_view, name='casehistory_view'),
    path('branch_list/', views.branch_list, name='branch_list'),
    
    path('cancel_appointment_invoice/', views.cancel_appointment_invoice, name='cancel_appointment_invoice'),
    
    
    path('get_latest_vitals/', views.get_latest_vitals, name='get_latest_vitals'),
    
    
    path('inventory_invlist/', views.inventory_invlist, name='inventory_invlist'),
    path('inventory_invview/', views.inventory_invview, name='inventory_invview'),
    path('inventory_cancel_invoice/', views.inventory_cancel_invoice, name='inventory_cancel_invoice'),
    path('inventory_restock_items/<int:invoice_id>/', views.inventory_restock_items, name='inventory_restock_items'),



    path('todayappointmentdirect/', views.todayappointmentdirect, name='todayappointmentdirect'),
    path('create_casehistorydirect/', views.create_casehistorydirect, name='create_casehistorydirect'),
    
	
	path('creditnote_list/', views.creditnote_list, name='creditnote_list'),
    path('create_creditnote/', views.create_creditnote, name='create_creditnote'),
    path('creditnote_detail/', views.creditnote_detail, name='creditnote_detail'),
    path('search_invoice/', views.search_invoice, name='search_invoice'), 
    path('get_invoice_detailsforcreditnote/', views.get_invoice_detailsforcreditnote, name='get_invoice_detailsforcreditnote'),
    
    path('get_inventoryreorder_level/', views.get_inventoryreorder_level, name='get_inventoryreorder_level'),

    
    path('get_lab_results/', views.get_lab_results, name='get_lab_results'),
    path('update_lab_result/', views.update_lab_result, name='update_lab_result'),
    path('delete_lab_result/', views.delete_lab_result, name='delete_lab_result'),
	path('update_group_lab_results/', views.update_group_lab_results, name='update_group_lab_results'),

    path('delete_lab_test/', views.delete_lab_test, name='delete_lab_test'),
    path('delete_lab_tests_by_date/', views.delete_lab_tests_by_date, name='delete_lab_tests_by_date'),
    
    path('get-dietplan-details/', views.get_dietplan_details, name='get_dietplan_details'),
    path('edit-dietplan/', views.edit_dietplan, name='edit_dietplan'),
    path('delete-dietplan/', views.delete_dietplan, name='delete_dietplan'),
    
    
    
 	path('appinvedit/',  views.appinvedit, name="appinvedit"),
    path('appinvoiceditform/', views.appinvoiceditform, name="appinvoiceditform"),
    path('daily_transaction_report/', views.daily_transaction_report, name="daily_transaction_report"),
    path('gst_report/', views.gst_report, name="gst_report"),
    
    path("zoho_contacts_view/", views.zoho_contacts_view, name="zoho_contacts_view"),
	path("sync-zoho-contacts/", views.sync_zoho_contacts_ajax, name="sync_zoho_contacts"),
    
    path('online-appointment/', views.online_appointment, name='online_appointment'),
    path('get-doctors-by-branch/', views.get_doctors_by_branch, name='get_doctors_by_branch'),
    path('get-doctor-booked-slots/', views.get_doctor_booked_slots, name='get_doctor_booked_slots'),
    path('search-online-patients/', views.searching_mrno, name='searching_mrno'),
    path('inventory-sales-report/', views.inventory_sales_report, name='inventory_sales_report'),
    path('doctor_visit_report/', views.doctor_visit_report, name='doctor_visit_report'),
    path('previous-patient-search/', views.previous_patient_search, name='previous_patient_search'),
    path('labcountreport/', views.labcountreport, name='labcountreport'),

    path("previouscasehistoryview_list/", views.previouscasehistoryview_list, name="previouscasehistoryview_list"),
    path('pending-pharmacy-invoices/', views.pending_pharmacy_invoice_list, name='pending_pharmacy_invoice_list'),
    path('patientallbranchdetailtable_data/', views.patientallbranchdetailtable_data, name='patientallbranchdetailtable_data'),
    
    path('smilee-appointment/', views.smilee_kannur_appointment, name='smilee_kannur_appointment'),
    
    path('search_labmrno/', views.search_labmrno, name='search_labmrno'),
    path('labrevenue/', views.lab_revenue, name='lab_revenue'),

    path('appointment-fee-list/', views.appointment_fee_list, name='appointment_fee_list'),
    path('appointment-fee-add/', views.appointment_fee_add, name='appointment_fee_add'),
    path('appointment-fee-edit/', views.appointment_fee_edit, name='appointment_fee_edit'),
    path('appointment-fee-delete/<int:fee_id>/', views.appointment_fee_delete, name='appointment_fee_delete'),
    
   
    path('api/get-appointment-fee/', views.get_appointment_fee_ajax, name='get_appointment_fee_ajax'),
    path('api/get-doctors-by-branch/', views.get_doctors_by_branch_ajax, name='get_doctors_by_branch_ajax'),

    


    # path('proforma-invoice/', views.proforma_invoice, name='proforma_invoice'),
    # path('purchase-order/', views.purchase_order, name='purchase_order'), 

    # path('proforma_invoice_create/', views.proforma_invoice_create, name='proforma_invoice_create'),
    # path('purchase_order_create/', views.purchase_order_create, name='purchase_order_create'),

    path('proforma-invoice/', views.proforma_invoice, name='proforma_invoice'),
    path('proforma-invoice-create/', views.proforma_invoice_create, name='proforma_invoice_create'),
    path('proforma-invoice-list/', views.proforma_invoice_list, name='proforma_invoice_list'),
    path('proforma-invoice-view/<int:pk>/', views.proforma_invoice_view, name='proforma_invoice_view'),
    path('proforma-invoice-print/<int:pk>/', views.proforma_invoice_print, name='proforma_invoice_print'),

    path('purchase-order/', views.purchase_order, name='purchase_order'),
    path('purchase-order-create/', views.purchase_order_create, name='purchase_order_create'),
    # path('purchase-order-list/', views.purchase_order_list, name='purchase_order_list'),
    # path('purchase-order-view/', views.purchase_order_view, name='purchase_order_view'),
    path('purchase-order-print/<int:pk>/', views.purchase_order_print, name='purchase_order_print'),
    path('purchase-order-edit/<int:pk>/', views.purchase_order_edit, name='purchase_order_edit'),
    path('purchase-order-delete/<int:pk>/', views.purchase_order_delete, name='purchase_order_delete'),

    # Proforma Invoice from PO
    path('proforma-invoice-create-from-po/<int:po_id>/', views.proforma_invoice_create_from_po, name='proforma_invoice_create_from_po'),

    # API endpoints
    path('api/search-medicines/', views.search_medicines_for_proforma, name='search_medicines_for_proforma'),
    path('api/get-proforma-items/', views.get_proforma_items, name='get_proforma_items'),
    path('api/get-po-items/', views.get_po_items, name='get_po_items'),
    path('api/get-po-items-with-stock/', views.get_po_items_with_stock, name='get_po_items_with_stock'),
    path('api/check-stock/', views.check_stock_availability, name='check_stock_availability'),

    # Proforma Invoice PDF generation
    path('proforma-invoice-generate-pdf/<int:pk>/', views.proforma_invoice_generate_pdf, name='proforma_invoice_generate_pdf'),
    path('update-proforma-payment-status/<int:pk>/', views.update_proforma_payment_status, name='update_proforma_payment_status'),


    # PO and SO number generation endpoints
    path('api/generate-po-number/', views.generate_po_number_ajax, name='generate_po_number_ajax'),
    path('api/generate-so-number/', views.generate_so_number_ajax, name='generate_so_number_ajax'),

    # B2B & B2C Invoice URLs
    path('b2b-invoice-create/<int:proforma_id>/', views.b2b_invoice_create, name='b2b_invoice_create'),
    path('b2c-invoice-create/<int:proforma_id>/', views.b2c_invoice_create, name='b2c_invoice_create'),
    path('b2b-invoice-view/', views.b2b_invoice_view, name='b2b_invoice_view'),
    path('b2c-invoice-view/', views.b2c_invoice_view, name='b2c_invoice_view'),
    path('b2b-invoice-list/', views.b2b_invoice_list, name='b2b_invoice_list'),
    path('b2c-invoice-list/', views.b2c_invoice_list, name='b2c_invoice_list'),
    path('b2b-invoice-print/<int:invoice_id>/', views.b2b_invoice_print, name='b2b_invoice_print'),
    path('b2c-invoice-print/<int:invoice_id>/', views.b2c_invoice_print, name='b2c_invoice_print'),


    path('purchaseorderlistforownbranch/', 
         views.purchaseorderlistforownbranch, 
         name='purchaseorderlistforownbranch'),
    
    path('purchase-order/<int:po_id>/transfer/', 
         views.create_stock_transfer_from_po, 
         name='create_stock_transfer_from_po'),
    
    # ==================== STOCK TRANSFER URLs ====================
    # Process and Create
    path('process-stock-transfer/', 
         views.process_stock_transfer, 
         name='process_stock_transfer'),
    
    path('stock-transfers/',                     views.stock_transfer_list,     name='stock_transfer_list'),
    path('stock-transfers/success/',             views.stock_transfer_success,  name='stock_transfer_success'),
 
    # Detail
    path('stock-transfer-detail/', 
         views.stock_transfer_detail, 
         name='stock_transfer_detail'),
    
    path('stock-transfer_verify/<int:transfer_id>/', 
         views.stock_transfer_verify, 
         name='stock_transfer_verify'),
    
    path('stock-transfer_approve/', 
         views.stock_transfer_approve, 
         name='stock_transfer_approve'),



    path('stock-transfers/<int:pk>/dispatch/',   views.stock_transfer_dispatch, name='stock_transfer_dispatch'),
    path('stock-transfers/<int:pk>/receive/',    views.stock_transfer_receive,  name='stock_transfer_receive'),
    path('stock-transfers/<int:pk>/reject/',     views.stock_transfer_reject,   name='stock_transfer_reject'),
    path('stock-transfers/<int:pk>/cancel/',     views.stock_transfer_cancel,   name='stock_transfer_cancel'),
 
    # AJAX
    path('api/item-stock/',                      views.get_item_stock,          name='get_item_stock'),
        path('purchase-order-list/', views.purchaseorderlist, name='purchaseorderlist'),
    path('purchase-order-view/', views.purchaseorderview, name='purchaseorderview'),
    path('purchase-order-edit/', views.purchaseorderedit, name='purchaseorderedit'),
    path('generate_custom_creditnote_number/', views.generate_custom_creditnote_number, name='generate_custom_creditnote_number'),
    path('lab_invoice_print_option/', views.lab_invoice_print_option, name='lab_invoice_print_option'),
    path('lab_invoice_list/', views.lab_invoice_list, name='lab_invoice_list'),
    path('lab_invoice_detail/', views.lab_invoice_detail, name='lab_invoice_detail'),
    path('lab_invoice_payment/', views.lab_invoice_payment, name='lab_invoice_payment'),
    path('casuality_invoice_print/',views.casuality_invoice_print,name="casuality_invoice_print"),
    path('procedure_master_list/', views.procedure_master_list, name='procedure_master_list'),
    path('procedure_master_add/', views.procedure_master_add, name='procedure_master_add'),
    path('procedure_master_edit/', views.procedure_master_edit, name='procedure_master_edit'),
    path('casuality_invoice_view/', views.casuality_invoice_view, name='casuality_invoice_view'),
    path('search_procedures_for_invoice/', views.search_procedures_for_invoice, name='search_procedures_for_invoice'),
    path('save_casuality_invoice/', views.save_casuality_invoice, name='save_casuality_invoice'),
    path('casuality_invoice_list/', views.casuality_invoice_list, name='casuality_invoice_list'),
    path('casuality_invoice_detail/', views.casuality_invoice_detail, name='casuality_invoice_detail'),
    path('casuality_invoice_cancel/', views.casuality_invoice_cancel, name='casuality_invoice_cancel'),
    path('lab_invoice_cancel/', views.lab_invoice_cancel, name='lab_invoice_cancel'),
    path('get_pending_invoices/', views.get_pending_invoices, name='get_pending_invoices'),
    path('get_pending_invoice_results/', views.get_pending_invoice_results, name='get_pending_invoice_results'),
    path('get_patient_today_invoice/', views.get_patient_today_invoice, name='get_patient_today_invoice'),
    path('lab_invoice_print_results/', views.lab_invoice_print_results, name='lab_invoice_print_results'),
    path('get_patient_admission_dates/', views.get_patient_admission_dates, name='get_patient_admission_dates'),
    path('debit-note/', views.debit_note_create, name='debit_note_create'),
    path('debit-note-list/', views.debit_note_list, name='debit_note_list'),
    path('debit-note-delete/<int:id>/', views.debit_note_delete, name='debit_note_delete'),
    path('debit-note-print/<int:id>/', views.debit_note_print, name='debit_note_print'),
    path('ajax/get-all-stock/', views.get_all_stock_ajax, name='get_all_stock_ajax'),
    path('ajax/search-medicine/', views.search_medicine_ajax, name='search_medicine_ajax'),
    path('ajax/medicine-details/<int:id>/', views.medicine_details_ajax, name='medicine_details_ajax'),


    path('purchase-invoice/', views.purchase_invoice, name='purchase_invoice'),
    path('purchase-invoice/save/', views.save_purchase_invoice, name='save_purchase_invoice'),
    path('purchase_invoice_list', views.purchase_invoice_list, name='purchase_invoice_list'),
    path('purchase-invoice-detail/', views.purchase_invoice_detail, name='purchase_invoice_detail'),
    path('search-medicines/', views.search_medicines, name='search_medicines'),
    path('get-medicine-batches/', views.get_medicine_batches, name='get_medicine_batches'),
    path('get-supplier-details/', views.get_supplier_details, name='get_supplier_details'),
    path('get_medicine_details/', views.get_medicine_details, name='get_medicine_details'),
    path('purchase-invoice-print/<int:invoice_id>/', views.purchase_invoice_print, name='purchase_invoice_print'),
    path('testmaster-delete/', views.testmaster_delete, name='testmaster_delete'),

    path('advance_register_ip/', views.advance_register_ip, name='advance_register_ip'),
    
    # Admission Discharge Bill Register
    path('admission_discharge_bill_register/', views.admission_discharge_bill_register, name='admission_discharge_bill_register'),
    
    # Admission Register
    path('admission_register/', views.admission_register, name='admission_register'),
    
    # Cancelled Bills Report
    path('cancelled_bills_report/', views.cancelled_bills_report, name='cancelled_bills_report'),
    
    # Patient Register Report
    path('birth_register_report/', views.patient_register_report, name='birth_register_report'),
    path('view_occupied_rooms/', views.view_occupied_rooms, name='view_occupied_rooms'), 
    # Discharge Register
    path('discharge_register/', views.discharge_register, name='discharge_register'),
    path('get_treatment_details/', views.get_treatment_details, name='get_treatment_details'),
    path("ip_patient_view/", views.ip_patient_view, name="ip_patient_view"),
    path("update_ip_treatment/", views.update_ip_treatment, name="update_ip_treatment"),
     path("update_ip_medicine/", views.update_ip_medicine, name="update_ip_medicine"),
    # Deaths During Admission Period
    path('deaths_during_admission/', views.deaths_during_admission, name='deaths_during_admission'),
    path('get-base-quantity/', views.get_base_quantity, name='get_base_quantity'),
    path('get_stock_details/', views.get_stock_details, name='get_stock_details'),
    path('sales-return-report/', views.sales_return_report, name='sales_return_report'),
    path('purchase-statement-report/', views.purchase_statement_report, name='purchase_statement_report'),
    path('sales-statement-report/', views.sales_statement_report, name='sales_statement_report'),
    
    path('detailed-bill-register/', views.detailed_bill_register, name='detailed_bill_register'),
    path('doctorwise-op-registration/', views.doctorwise_op_registration, name='doctorwise_op_registration'),
    path('doctorwise-bill-analysis/', views.doctorwise_bill_analysis, name='doctorwise_bill_analysis'),
    path('discharge-summary/', views.discharge_summary_view, name='discharge_summary_view'),
    path('occupancy-list/', views.occupancy_list, name='occupancy_list'),
    path('doctors-op-ip-collection/', views.doctors_op_ip_collection, name='doctors_op_ip_collection'),
    path('doctorwise-admission-register/', views.doctorwise_admission_register, name='doctorwise_admission_register'),
    path('birth_and_death_registration/',views.birth_and_death_register,name="birth_and_death_registration"),
    path('api/save-death-registration/', views.save_death_registration, name='save_death_registration'),
    path('api/save-birth-registration/', views.save_birth_registration, name='save_birth_registration'),
    path('api/search-patient/', views.search_patient, name='search_patient'),
    path('api/search-mother/', views.search_mother_by_mr, name='search_mother_by_mr'),
    path('birth-death-list/', views.birth_and_death_list, name='birth_death_list'),
    path('lab-results/', views.view_lab_results, name='view_lab_results'),
    path('lab-result-edit/', views.edit_lab_result, name='edit_lab_result'),
    path('asset_list/', views.asset_list, name='asset_list'),
    path('asset_add/', views.asset_add, name='asset_add'),
    path('asset_edit/', views.asset_edit, name='asset_edit'),          # ?id=1
    path('asset_delete/', views.asset_delete, name='asset_delete'),    # ?id=1
    
    # Asset Transfer
    path('asset_transfer/', views.asset_transfer, name='asset_transfer'),  # ?id=1
    path('asset_transfers/', views.asset_transfer_list, name='asset_transfer_list'),
    
    # Asset History
    path('asset_history/', views.asset_history, name='asset_history'),  # ?id=1
    
    # Asset Report
    path('asset_report/', views.asset_report, name='asset_report'),
    path('asset_transfer_edit/', views.asset_transfer_edit, name='asset_transfer_edit'),
     path('inventory-issue-note-create/', views.inventory_issue_note_create, name='inventory_issue_note_create'),
    path('inventory-issue-note-list/', views.inventory_issue_note_list, name='inventory_issue_note_list'),
    path('inventory-issue-note-detail/', views.inventory_issue_note_detail, name='inventory_issue_note_detail'),
    path('inventory-issue-note-print/', views.inventory_issue_note_print, name='inventory_issue_note_print'),
    
    # AJAX endpoints
    path('get-inventory-stock/', views.get_inventory_stock_details, name='get_inventory_stock_details'),
    path('search-inventory-items/', views.search_inventory_items_for_gin, name='search_inventory_items_for_gin'),
    path('get_staff_by_department_ajax/', views.get_staff_by_department_ajax, name='get_staff_by_department_ajax'),
    path('check-inventory-stock/', views.check_inventory_stock, name='check_inventory_stock'),
    path('add-appointment-status/', views.add_appointment_status, name='add_appointment_status'),
    path('appointment-status-list/', views.appointment_status_list, name='appointment_status_list'),
    path('edit-appointment-status/', views.edit_appointment_status, name='edit_appointment_status'),
    path('delete-appointment-status/', views.delete_appointment_status, name='delete_appointment_status'),
    # path('check-appointment-status/', views.check_appointment_status, name='check_appointment_status'),
    path('get-appointment-fee/', views.get_appointment_fee_ajax, name='get_appointment_fee_ajax'),
    path('visit-cycle/', views.patient_visit_cycle_list, name='patient_visit_cycle_list'),
    path('visit-cycle-detail/', views.patient_visit_cycle_detail, name='patient_visit_cycle_detail'),
    path('advance-register-ip-detail/', views.advance_register_ip_detail, name='advance_register_ip_detail'),
    path('admission-discharge-bill-detail/', views.admission_discharge_bill_detail, name='admission_discharge_bill_detail'),
    path('admission-register-detail/', views.admission_register_detail, name='admission_register_detail'),
    path('cancelled-bills-detail/', views.cancelled_bills_detail, name='cancelled_bills_detail'),
    path('birth-register-detail/', views.birth_register_detail, name='birth_register_detail'),
    path('discharge-register-detail/', views.discharge_register_detail, name='discharge_register_detail'),
    # IP Advance Payment URLs
    path('ip-advance-payment/', views.ip_advance_payment, name='ip_advance_payment'),
    path('ip-advance-payment-history/', views.ip_advance_payment_history, name='ip_advance_payment_history'),
    path('ip-advance-receipt/', views.ip_advance_receipt, name='ip_advance_receipt'),
    path('get-ip-admission-details/', views.get_ip_admission_details, name='get_ip_admission_details'),
    path('delete-ip-advance/<int:payment_id>/', views.delete_ip_advance_payment, name='delete_ip_advance_payment'),
    path('get-ip-patient-advances/<int:admission_id>/', views.get_ip_patient_advances, name='get_ip_patient_advances'),
    path('export-advance-payments/<int:admission_id>/', views.export_advance_payments, name='export_advance_payments'),

    path('search-store/', views.search_store, name='search_store'),
    path('search-supplier/', views.search_supplier, name='search_supplier'),
    path('pre-appointment-booking/', views.pre_appointment_booking, name='pre_appointment_booking'),
    path('pre-appointment-booking-list/', views.pre_appointment_booking_list, name='pre_appointment_booking_list'),
    path('take-appointment/<int:booking_id>/', views.take_appointment_from_prebooking, name='take_appointment_from_prebooking'),
    path('delete-pre-appointment/<int:booking_id>/', views.delete_pre_appointment, name='delete_pre_appointment'),

    path('registration-fee-invoice/', views.registration_fee_invoice, name='registration_fee_invoice'),
    path('doctorwise-op-registration-detail/', views.doctorwise_op_registration_detail, name='doctorwise_op_registration_detail'),
    path('doctorwise-bill-detail/', views.doctorwise_bill_detail, name='doctorwise_bill_detail'),
    path('occupancy-detail/', views.occupancy_detail, name='occupancy_detail'),
    path('collection-detail/',  views.collection_detail, name='collection_detail'),
    path('doctorwise-admission-register-detail/',  views.doctorwise_admission_register_detail, name='doctorwise_admission_register_detail'),
    path('death-during-admission-detail/', views.death_during_admission_detail, name='death_during_admission_detail'),
    path('sales-summary/', views.sales_summary, name='sales_summary'),
    ]+ static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)