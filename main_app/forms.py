from django import forms
from django.contrib.auth.forms import UserCreationForm, UserChangeForm

from .models import *

# class LoginForm(forms.ModelForm):
#     class Meta:
#         model = User
#         fields = ('email', 'password')
#
#
# class RegisterForm(forms.ModelForm):
#     class Meta:
#         model = User
#         fields = ('username', 'email', 'password')

# class LoginForm(forms.Form):
#     email = forms.CharField(
#         widget=forms.TextInput(attrs={
#             'class': 'full-width has-padding has-border',
#             'id': 'signin-email',
#             'placeholder': 'E-mail'
#         }))
#
#     password = forms.CharField(
#         widget=forms.PasswordInput(attrs={
#             'class': 'full-width has-padding has-border',
#             'id': 'signin-password',
#             'placeholder': 'Password'
#         }))

#
# class CustomUserCreationForm(UserCreationForm):
#
#     class Meta(UserCreationForm):
#         model = Vehicle
#         fields = ('vehicle', 'photo')
#
#
# class CustomUserChangeForm(UserChangeForm):
#
#     class Meta:
#         model = Vehicle
#         fields = ('email',)


class SellCarForm(forms.ModelForm):
    make = forms.ModelChoiceField(queryset=Make.objects.all())
    model = forms.ModelChoiceField(queryset=Model.objects.all())
    engine = forms.ModelChoiceField(queryset=Engine.objects.all())
    
    class Meta:
        model = Vehicle
        fields = ('extra_name', 'body_type', 'price', 'production_year',
                  'condition_type', 'drivetrain_type', 'type', 'currency',
                  'mileage', 'transmission_type', 'exterior_color',
                  'interior_color', 'door_type', 'fuel_type', 'description',
                  'consumption_city', 'consumption_highway', 'consumption_combined',
                  'cylinders', 'seating_cap')


class ContactUsForm(forms.ModelForm):
    # name = forms.CharField(max_length=200, help_text="Name of the sender")
    # email = forms.EmailField(max_length=200)
    # phone = forms.CharField(max_length=12)
    # message = forms.Textarea()

    class Meta:
        model = ContactUs
        fields = ('name', 'email', 'phone', 'message')