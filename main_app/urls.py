from django.urls import path
from . import views
from django.conf import settings
from django.conf.urls.static import static

app_name = 'main_app'
urlpatterns = [
    path('', views.index, name='index'),
    path('automjet', views.vehicle, name='vehicle'),
    path('automjeti/map', views.map_in_vehicle, name='map_in_vehicle'),
    path('search', views.advance_search, name='advance_search'),
    path('shitje', views.sell_vehicle, name='shit_automjetin'),
    path('category', views.category_search, name="category"),
    path('about/rreth_nesh/', views.about_us, name='about_us'),
    path('about/contact_us/', views.contact_us, name='contact_us'),
    path('vehicle_type_templates/secondary', views.secondary_main, name='second_main'),
    path('savevehicle', views.save_vehicle, name='save_vehicle'),
] + static(settings.MEDIA_URL, document_root=settings.MEDIA_ROOT)
