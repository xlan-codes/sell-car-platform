import json
import profile

from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm
from .models import CustomUser, Location
from main_app.models import Vehicle
from django_google_maps.widgets import GoogleMapsAddressWidget
from django_google_maps.fields import AddressField, GeoLocationField
from django.forms.models import model_to_dict, fields_for_model, ModelForm


class CustomUserCreationForm(UserCreationForm):

    class Meta(UserCreationForm):
        model = CustomUser
        fields = ('email', 'seller_type_id')


class CustomUserChangeForm(UserChangeForm):

    class Meta:
        model = CustomUser
        fields = ('email',)


class GeoLocationForm(forms.ModelForm):

    class Meta(object):
        model = Location
        fields = ['address', 'geolocation']
        widgets = {
            "address": GoogleMapsAddressWidget(attrs={
                'class': 'address-input',
                'data-map-type': 'roadmap',
                'data-autocomplete-options': json.dumps({
                    'types': ['geocode', 'establishment'],
                    'componentRestrictions': {
                        'country': 'AL'
                    }
                })
            }),
        }


# class UserRegistrationForm(ModelForm):
#     def __init__(self, instance=None, *args, **kwargs):
#         _fields = ('first_name', 'last_name', 'phone', 'email', 'password1', 'password2', 'seller_type_id')
#         _initial = model_to_dict(instance.user, _fields) if instance is not None else {}
#         super(UserRegistrationForm, self).__init__(initial=_initial, instance=instance, *args, **kwargs)
#         self.fields.update(fields_for_model(CustomUser, _fields))
#
#     class Meta:
#         model = Location
#         exclude = ('user',)
#
#     def save(self, *args, **kwargs):
#         u = self.instance.user
#         u.first_name = self.cleaned_data['first_name']
#         u.last_name = self.cleaned_data['last_name']
#         u.phone = self.cleaned_data['phone']
#         u.email = self.cleaned_data['email']
#         u.password1 = self.cleaned_data['password1']
#         u.password2 = self.cleaned_data['password2']
#         u.seller_type_id = self.cleaned_data['seller_type_id']
#         return profile


class SignUpForm(UserCreationForm):
    address = AddressField(max_length=100)

    class Meta:
        model = CustomUser
        fields = ('first_name', 'last_name', 'phone', 'email', 'password1', 'password2',
                  'seller_type_id', 'logo', 'website')


class UpdateForm(forms.Form):
    display_name = forms.CharField(max_length=60)
    first_name = forms.CharField(max_length=40)
    last_name = forms.CharField(max_length=40)
    phone = forms.IntegerField(max_value=999999999999)
    email = forms.EmailField()
    # notification = forms.BooleanField()
    # password1 = forms.PasswordInput()
    # password2 = forms.PasswordInput()


# class UpdateForm(UserCreationForm):
#     # display_name = forms.CharField(max_length=60)
#     # first_name = forms.CharField(max_length=40)
#     # last_name = forms.CharField(max_length=40)
#     # phone_number = forms.IntegerField(max_value=9999999999)
#     # notification = forms.BooleanField()
#     # password1 = forms.PasswordInput()
#     # password2 = forms.PasswordInput()
#     # email = forms.EmailField()
#
#     class Meta:
#         model = CustomUser
#         fields = ('display_name', 'first_name', 'last_name', 'phone', 'email',)


class UpdateAdForm(forms.ModelForm):
    # make = forms.CharField(max_length=40)
    # model = forms.CharField(max_length=40)

    class Meta:
        model = Vehicle
        fields = ('extra_name', 'type', 'body_type', 'price', 'production_year', 'condition_type',
                  'drivetrain_type', 'cylinders', 'currency', 'engine_type', 'mileage', 'transmission_type',
                  'exterior_color', 'interior_color', 'door_type', 'fuel_type', 'description', 'seating_cap')
