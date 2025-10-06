from django.http import HttpeResponse

class HealthCheckMiddleware:
    def __init__(self, get_response):
        self.get_response = get_response

    def __call__(self, request):
        if request.path == "/health":
            return HttpeResponse("ok")
        
        return self.get_response(request)