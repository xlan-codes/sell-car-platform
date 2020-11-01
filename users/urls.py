from django.contrib import admin
from django.urls import path, include
from . import views

urlpatterns = [
    path('profile/', views.user_profile, name='user_profile'),
    path('compare/', views.compare_vehicle, name='compare_vehicle'),
    path('saved/', views.saved_vehicle, name='saved_vehicle'),
    path('ads/', views.manage_ad, name='manage_ad'),
    path('update/', views.update_userinfo, name='update_userinfo'),
    path('update_ad/', views.update_ad, name='update_ad'),
    path('info_ad/', views.info_ad, name='info_ad'),
    path('location', views.set_location, name='set_location'),
]
