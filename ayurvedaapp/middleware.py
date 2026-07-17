# middleware.py

from django.shortcuts import redirect

class BackButtonLogoutMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        response = self.get_response(request)
        
        # Check if the user should be logged out based on session variable
        if request.session.get('should_logout', False):
            # Clear session and log out user
            request.session.flush()
            return redirect('staff_login')  # Replace with your login URL name
        return response
