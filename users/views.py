from django.core.exceptions import MultipleObjectsReturned, ObjectDoesNotExist
from django.shortcuts import render, redirect
from django.contrib.auth import login, authenticate
from django.contrib.auth.decorators import login_required
import json
from .models import SavedVehicle, CustomUser, Location
from .forms import SignUpForm, UpdateForm, UpdateAdForm, GeoLocationForm
from main_app.models import SearchOption, PhotoGallery, Vehicle


@login_required
def user_account(request):
    if request.user_agent.is_mobile:
        return render(request, 'user_account/main_mobile.html')
    else:
        return render(request, 'user_account/main.html')


@login_required
def user_profile(request):
    user = request.user
    userdata = {
        'firstname': user.first_name,
        'lastname': user.last_name,
        'phone': user.phone,
        'joined': user.date_joined,
        'email': user.email,
        'location': Location.objects.filter(user=user.id),
    }
    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/profile_mobile.html', {
            'userdata': userdata,
    })
    else:
        return render(request, 'user_account/account/profile.html', {
            'userdata': userdata,
        })


@login_required
def compare_vehicle(request):
    comparable = SearchOption.objects.all()
    vehicles = []
    res = {
        'res': [],
        'images': []
    }
    if request.GET.get('comparables'):
        vehicles = json.loads(request.GET.get('comparables'))
        res = _getV(vehicles)

    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/compare_vehicle_mobile.html', {
            'compare': comparable,
            'compared': res['res'],
            'images': res['images']
        })
    else:
        return render(request, 'user_account/account/compare_vehicle.html', {
            'comparable': comparable,
            'compared': res['res'],
            'images': res['images']
        })


@login_required
def info_ad(request):
    vehicle_id = request.GET.get('vehicle_id')
    if request.user_agent.is_mobile:
        return render(request,'user_account/account/manage_ad/info_ad_mobile.html',{
            'vehicle': Vehicle.objects.get(pk=json.loads(vehicle_id))
        })
    else:
        return render(request, 'user_account/account/manage_ad/info_ad.html',{
            'vehicle': Vehicle.objects.get(pk=json.loads(vehicle_id))
        })


@login_required
def manage_ad(request):
    saved = list(Vehicle.objects.filter(user=request.user))
    res = []
    for vehicle in saved:
        res.append({
            'vehicle': vehicle,
            'gallery': PhotoGallery.objects.filter(vehicle=vehicle.id)
        })

    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/manage_ad/manage_ad_mobile.html',{
            'saved': res
        })
    else:
        return render(request, 'user_account/account/manage_ad/manage_ad.html',{
            'saved': res
        })


@login_required
def update_ad(request):
    vehicle_id = request.GET.get('id')
    vehicle_data = Vehicle.objects.get(pk=vehicle_id)
    form_class = UpdateAdForm
    form = form_class(request.POST or None)
    if request.method == 'POST':
        if form.is_valid():
            Vehicle.objects.filter(pk=vehicle_id)\
                .update(extra_name=form.cleaned_data['extra_name'], type=form.cleaned_data['type'],
                        currency=form.cleaned_data['currency'], price=form.cleaned_data['price'],
                        production_year=form.cleaned_data['production_year'], condition_type=form.cleaned_data['condition_type'],
                        engine_type=form.cleaned_data['engine_type'], drivetrain_type=form.cleaned_data['drivetrain_type'],
                        transmission_type=form.cleaned_data['transmission_type'], cylinders=form.cleaned_data['cylinders'],
                        body_type=form.cleaned_data['body_type'], exterior_color=form.cleaned_data['exterior_color'],
                        interior_color=form.cleaned_data['interior_color'], mileage=form.cleaned_data['mileage'],
                        door_type=form.cleaned_data['door_type'], seating_cap=form.cleaned_data['seating_cap'],
                        fuel_type=form.cleaned_data['fuel_type'], description=form.cleaned_data['description'])
            return redirect('/user/profile')
    else:
        form = UpdateAdForm(initial=_getDefaultVehicleInfo(vehicle_data))

    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/manage_ad/update_ad_mobile.html', {
            'form': form,
        })
    else:
        return render(request, 'user_account/account/manage_ad/update_ad.html', {
            'form': form,
        })


@login_required
def update_userinfo(request):
    user_from_request = request.user
    form_class = UpdateForm
    form = form_class(request.POST or None)
    if request.method == 'POST':
        if form.is_valid():
            CustomUser.objects.filter(pk=user_from_request.id) \
                .update(display_name=form.cleaned_data['display_name'], first_name=form.cleaned_data['first_name'],
                        last_name=form.cleaned_data['last_name'], phone=form.cleaned_data['phone'],
                        email=form.cleaned_data['email'])
            # user_instance = CustomUser.objects.filter(pk=user_from_request.id)\
            #     .update(display_name=form.cleaned_data['display_name'], first_name=form.cleaned_data['first_name'],
            #             last_name=form.cleaned_data['last_name'], phone=form.cleaned_data['phone'],
            #             email=form.cleaned_data['email'])
            # CustomUser(user_instance)
            # form.save()
            # TODO write on db
            return redirect('/user/profile')
        else:
            form = UpdateForm(initial=_getDefaultUserInfo(user_from_request))
    else:
        form = UpdateForm(initial=_getDefaultUserInfo(user_from_request))

    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/update_info_mobile.html', {
            'form': form,
        })
    else:
        return render(request, 'user_account/account/update_info.html', {
            'form': form,
        })


@login_required
def saved_vehicle(request):
    saved = list(SavedVehicle.objects.filter(user=request.user))
    res = []
    for vehicle in saved:
        # res.append(PhotoGallery.objects.filter(vehicle=vehicle.id))
        res.append({
            'vehicle': vehicle,
            'gallery': PhotoGallery.objects.filter(vehicle=vehicle.id)
        })

    if request.user_agent.is_mobile:
        return render(request, 'user_account/account/saved_vehicle_mobile.html', {
            'saved': res
        })
    else:
        return render(request, 'user_account/account/saved_vehicle.html', {
            'saved': res
        })


def signup(request):
    if request.method == 'POST':
        form = SignUpForm(request.POST, request.FILES)
        if form.is_valid():
            new_user = form.save()
            new_user.refresh_from_db()
            email = form.cleaned_data.get('email')
            new_user.save()
            raw_password = form.cleaned_data.get('password1')
            new_user = authenticate(email=email, password=raw_password)
            login(request, new_user)
            return redirect(set_location)
    else:
        form = SignUpForm()
    return render(request, 'registration/signup.html', {
        'form': form
    })


def set_location(request):
    try:
        default_location = list(Location.objects.filter(user=request.user.id))[0]
    except:
        default_location = None
    if request.method == 'POST':
        form = GeoLocationForm(request.POST)
        if form.is_valid():
            user = request.user
            try:
                if Location.objects.get(user__id=user.id):
                    Location.objects.filter(user__id=user.id) \
                        .update(address=form.cleaned_data['address'], geolocation=form.cleaned_data['geolocation'],)
                    return redirect(user_profile)
                else:
                    location = form.save(commit=False)
                    location.user = user
                    location.user.id = user.id
                    location.save()
                    return redirect(user_profile)
            except MultipleObjectsReturned:
                Location.objects.filter(user__id=user.id).delete()
                location = form.save(commit=False)
                location.user = user
                location.user.id = user.id
                location.save()
                return redirect(user_profile)
            except ObjectDoesNotExist:
                location = form.save(commit=False)
                location.user = user
                location.user.id = user.id
                location.save()
                return redirect(user_profile)
        else:
            if default_location:
                form = GeoLocationForm(initial=_getDefaultLocation(default_location))
            else:
                form = GeoLocationForm()
    else:
        if default_location:
            form = GeoLocationForm(initial=_getDefaultLocation(default_location))
        else:
            form = GeoLocationForm()

    return render(request, 'registration/location.html', {
        'form': form
    })


def _getV(list):
    res = []
    images = []
    for vehicle in list:
        res.append(Vehicle.objects.select_related().get(pk=vehicle))
        images.append(PhotoGallery.objects.filter(vehicle=vehicle).first())
    return {
        'res': res,
        'images': images
    }


def _getDefaultUserInfo(user):
    return {
        'display_name': user.display_name,
        'first_name': user.first_name,
        'last_name': user.last_name,
        'phone': user.phone,
        'email': user.email,
    }


def _getDefaultVehicleInfo(vehicle):
    return {
        'type': vehicle.type,
        'extra_name': vehicle.extra_name,
        'body_type': vehicle.body_type,
        'door_type': vehicle.door_type,
        'condition_type': vehicle.condition_type,
        'drivetrain_type': vehicle.drivetrain_type,
        'fuel_type': vehicle.fuel_type,
        'engine_type': vehicle.engine_type,
        'consumption_city': vehicle.consumption_city,
        'consumption_highway': vehicle.consumption_highway,
        'cylinders': vehicle.cylinders,
        'transmission_type': vehicle.transmission_type,
        'seating_cap': vehicle.seating_cap,
        'production_year': vehicle.production_year,
        'mileage': vehicle.mileage,
        'price': vehicle.price,
        'currency': vehicle.currency,
        'exterior_color': vehicle.exterior_color,
        'interior_color': vehicle.interior_color,
        'description': vehicle.description,
    }


def _getDefaultLocation(location):
    return {
        'address': location.address,
        'geolocation': location.geolocation,
    }
