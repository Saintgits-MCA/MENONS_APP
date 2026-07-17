from .models import Roleassign, menumanagement, Hospitaldetails
from django.shortcuts import render, get_object_or_404, redirect

def usermenu(request):
    staff_id = request.session.get('staffid')
    menu_data = {}
    hospital_details = Hospitaldetails.objects.first()  # Ensure this is always assigned.

    if staff_id:
        # Fetch role assignments for the given staff ID
        role_assignments = Roleassign.objects.filter(Staff_id=staff_id)
        # Get the role IDs
        role_ids = role_assignments.values_list('roleid', flat=True)
        # Retrieve menu management entries based on the user's roles
        menu_management_entries = menumanagement.objects.filter(roleid__in=role_ids)
        # Prepare menu data to be sent to the template
        for entry in menu_management_entries:
            menu = entry.menuid
            heading = menu.menuheadingname.menuheadingname
            if heading not in menu_data:
                menu_data[heading] = []
            # Append menu item details to the respective heading
            menu_data[heading].append({
                'menu': menu,
                'menumanagement_id': entry.id,
                'icon': menu.icon, 
                'view': entry.view == '1',
                'add': entry.add == '1',
                'edit': entry.edit == '1',
                'delete': entry.delete == '1',
            })
    
    return {
        'menu_data': menu_data,
        'hospital_details': hospital_details,
    }
