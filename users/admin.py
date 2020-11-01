from django.contrib import admin
from django.contrib.auth.admin import UserAdmin
from django.forms.widgets import TextInput

from django_google_maps.widgets import GoogleMapsAddressWidget
from django_google_maps.fields import AddressField, GeoLocationField
from django_google_maps import widgets as map_widgets
from django_google_maps import fields as map_fields

from .forms import CustomUserCreationForm, CustomUserChangeForm
from .models import CustomUser, Location


class CustomUserAdmin(UserAdmin):
    add_form = CustomUserCreationForm
    form = CustomUserChangeForm
    model = CustomUser
    list_display = ('email', 'is_staff', 'is_active', 'seller_type_id', 'phone')
    list_filter = ('email', 'is_staff', 'is_active', 'seller_type_id')
    fieldsets = (
        (None, {'fields': ('email', 'password', 'seller_type_id', 'phone')}),
        ('Permissions', {'fields': ('is_staff', 'is_active')}),
    )
    add_fieldsets = (
        (None, {
            'classes': ('wide',),
            'fields': ('email', 'password1', 'password2', 'seller_type_id', 'phone', 'is_staff', 'is_active')}
        ),
    )
    search_fields = ('email', 'seller_type_id')
    ordering = ('email', 'seller_type_id')


class LocationModelAdmin(admin.ModelAdmin):
    formfield_overrides = {
        AddressField: {
            'widget': map_widgets.GoogleMapsAddressWidget(attrs={'data-map-type': 'roadmap'})
        },
        GeoLocationField: {
            'widget': TextInput(attrs={
                'readonly': 'readonly'
            })
        },
    }


admin.site.register(CustomUser, CustomUserAdmin)
admin.site.register(Location, LocationModelAdmin)
