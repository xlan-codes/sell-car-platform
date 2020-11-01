from django.db import models
from django.contrib.auth.models import AbstractBaseUser
from django.contrib.auth.models import PermissionsMixin
from django.utils.translation import gettext_lazy as _
from django.utils import timezone
from django.core.validators import RegexValidator
from .managers import CustomUserManager
from django_google_maps.fields import AddressField, GeoLocationField
from .utils.utils import user_directory_path_logo

phone_validator = RegexValidator(r'^(\d{10}|\d{12})$')


class CustomUser(AbstractBaseUser, PermissionsMixin):
    name = models.CharField(max_length=80, blank=True)
    first_name = models.CharField(max_length=40)
    last_name = models.CharField(max_length=40)
    display_name = models.CharField(max_length=60, blank=True)
    email = models.EmailField(_('email address'), unique=True)
    is_staff = models.BooleanField(default=False)
    is_active = models.BooleanField(default=True)
    phone = models.CharField(validators=[phone_validator], max_length=12)
    seller_type_id = models.ForeignKey('main_app.Seller', default=2, on_delete=models.CASCADE)
    logo = models.ImageField(upload_to=user_directory_path_logo, help_text="Logo e kompanise", blank=True)
    website = models.CharField(max_length=120, blank=True)
    date_joined = models.DateTimeField(default=timezone.now)

    USERNAME_FIELD = 'email'
    REQUIRED_FIELDS = []

    objects = CustomUserManager()

    def __str__(self):
        return self.email


class Location(models.Model):
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)
    address = AddressField(max_length=100)
    geolocation = GeoLocationField(blank=True)

    def __str__(self):
        return self.address + ' / ' + self.user.email


class SavedVehicle(models.Model):
    vehicle = models.ForeignKey('main_app.Vehicle', on_delete=models.CASCADE)
    user = models.ForeignKey(CustomUser, on_delete=models.CASCADE)

    def __str__(self):
        return self.user.email
        # return self.vehicle.engine_type.model.make.name + ' ' + self.vehicle.engine_type.model.name + ' / ' + self.user.email