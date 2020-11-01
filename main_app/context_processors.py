from .models import VehicleType


def vehicle_types_processor(request):
    vehicle_type = VehicleType.objects.all()
    return {"vehicle_types": vehicle_type}
