from django.contrib import admin
from .models import *
from users.models import SavedVehicle

models_to_register = [Vehicle, VehicleType, Make, Model, Body, Door, Condition, Drivetrain,
                      Fuel, Transmission, SeatingCap, PhotoGallery, Currency, VehicleOption,
                      VehicleHighlights, SearchOption, ExteriorColor, InteriorColor, Engine,
                      Cylinder, Seller, SavedVehicle, EuroToLek]


admin.site.register(models_to_register)
