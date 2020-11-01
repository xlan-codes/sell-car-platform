from django.contrib.auth.decorators import login_required
from django.core.serializers import json
from django.http import HttpResponseRedirect, HttpResponse
from django.shortcuts import render
from django.db.models import Q
from django.views.decorators.csrf import csrf_exempt
from django.db.models import F
from users.models import SavedVehicle, Location
from .models import *
from .forms import SellCarForm
from django.contrib import messages
from .forms import ContactUsForm
from functools import reduce
import operator
import json
from users.forms import GeoLocationForm


def index(request):
    body_list = Body.objects.filter(vehicle_type__tag='car')
    count = Vehicle.objects.filter(type__tag='car').count()
    make = Make.objects.filter(model__engine__vehicle__type__tag='car').distinct()
    currency = Currency.objects.filter(tag='EUR')

    if request.user_agent.is_mobile:
        return render(request, 'main/main_mobile.html', {
            'body_list': body_list,
            'items': _getMostPopular(),
            'make': make,
            'count': count,
            'currency': currency,
        })
    else:
        return render(request, 'main/main.html', {
            'body_list': body_list,
            'items': _getMostPopular(),
            'make': make,
            'count': count,
            'currency': currency,
        })


def secondary_main(request):
    type = request.GET.get('type')
    vehicle_type = VehicleType.objects.get(tag=type)
    items = Vehicle.objects.filter(type__tag=type)
    count = len(list(items))
    make = Make.objects.filter(model__engine__vehicle__type__tag=type)
    bodies = Body.objects.filter(vehicle_type__tag=type)
    if request.user_agent.is_mobile:
        return render(request, 'main/vehicle_type_templates/main_mobile.html', {
            'vehicle_type': vehicle_type,
            'bodies': bodies,
            'make': make,
            'count': count,
        })
    else:
        return render(request, 'main/vehicle_type_templates/main.html', {
            'vehicle_type': vehicle_type,
            'bodies': bodies,
            'make': make,
            'count': count,
        })


def set_location(request):
    try:
        default_location = list(Location.objects.filter(user=request.user.id))[0]
    except:
        default_location = None
    if default_location:
        form = GeoLocationForm(initial=_getDefaultLocation(default_location))
    else:
        form = GeoLocationForm()

    return render(request, 'registration/location.html', {
        'form': form
    })


def vehicle(request):
    vehicle_data = Vehicle.objects.get(pk=request.GET.get('id'))
    Vehicle.objects.filter(pk=vehicle_data.id).update(popularity=F('popularity') + 1)
    gallery = PhotoGallery.objects.filter(vehicle=vehicle_data.id)
    options = VehicleOption.objects.filter(vehicle=vehicle_data.id)
    highlights = VehicleHighlights.objects.filter(vehicle=vehicle_data.id)
    loc_list = list(Location.objects.values('address', 'geolocation').filter(user=request.GET.get('seller')))
    if len(loc_list) > 0:
        location = loc_list[0]
    else:
        location = None

    if request.user_agent.is_mobile:
        return render(request, 'main/automjeti/automjet_mobile.html', {
            'vehicle_data': vehicle_data,
            'album': gallery,
            'options': options,
            'highlights': highlights,
            'location': location
        })
    else:
        return render(request, 'main/automjeti/automjet.html', {
            'vehicle_data': vehicle_data,
            'album': gallery,
            'options': options,
            'highlights': highlights,
            'location': location
        })


def map_in_vehicle(request):
    try:
        location = GeoLocationForm(initial=_getDefaultLocation(list(Location.objects.filter(user=request.user.id))[0]))
    except:
        location = None

    return render(request, 'main/automjeti/map/map_modal.html', {
        'form': location
    })


@csrf_exempt
def advance_search(request):
    type = request.GET.get('type__tag') if request.GET.get('type__tag') else 'car'

    filter_obj = _mapRequestData(request)
    if request.is_ajax():
        if request.POST.get('filter_model_base'):
            return render(request, 'main\header\dependent_filter\model_filter.html', {
                'models': _getModels(request.POST.get('filter_model_base'))
            })
        if request.POST.get('filter_model'):
            if request.user_agent.is_mobile:
                return render(request, 'main/automjeti/search/dependent_filter_modal_mobile/model_filter.html', {
                    'models': _getModels(request.POST.get('filter_model'))
                })
            return render(request, 'main/automjeti/search/dependent_filter_modal/model_filter.html', {
                'models': _getModels(request.POST.get('filter_model'))
            })
        if request.POST.get('filter_engine'):
            if request.user_agent.is_mobile:
                return render(request, 'main/automjeti/search/dependent_filter_modal_mobile/engine_filter.html', {
                    'engines': _getEngines(request.POST.get('filter_engine'))
                })
            return render(request, 'main/automjeti/search/dependent_filter_modal/engine_filter.html', {
                'engines': _getEngines(request.POST.get('filter_engine'))
            })

        return render(request, 'main/automjeti/search/filtered_search.html', {
            # 'list': _getVehicles(list(Vehicle.objects.filter(**filter_obj)))
            'list': _getVehicles(_filterAll(request, filter_obj))
        })

    # vehicle_list = list(Vehicle.objects.filter(**filter_obj))
    # count = len(vehicle_list)
    filters = _getFilters(type)
    vehicles_to_return = _getVehicles(_filterAll(request, filter_obj))

    if request.user_agent.is_mobile:
        return render(request, 'main/automjeti/advance_search_mobile.html', {
            'list': vehicles_to_return,
            'count': len(vehicles_to_return),
            'filters': filters,
        })
    else:
        return render(request, 'main/automjeti/advance_search.html', {
            'list': vehicles_to_return,
            'count': len(vehicles_to_return),
            'filters': filters,
        })


@login_required()
def sell_vehicle(request):
    form = SellCarForm(request.POST)
    if form.is_valid():
        print()
        # return HttpResponseRedirect('/')
    else:
        form = SellCarForm()

    if request.user_agent.is_mobile:
        return render(request, 'main/shit_automjetin/shit_automjetin_mobile.html', {
            'form': form,
        })
    else:
        return render(request, 'main/shit_automjetin/shit_automjetin.html', {
            'form': form,
        })


@csrf_exempt
def category_search(request):
    if request.is_ajax():
        if request.POST.get('bodies'):
            try:
                vehicles = Vehicle.objects.filter(body_type__name__in=json.loads(request.POST.get('bodies')))
                return render(request, 'main/automjeti/category/filtered_field.html', {
                    'vehicle': vehicles
                })
            except:
                vehicles = Vehicle.objects.filter(type__name='car')
                return render(request, 'main/automjeti/category/filtered_field.html', {
                    'vehicle': vehicles
                })
    category = request.GET.get('category') if request.GET.get('category') else None
    if request.GET.get('type'):
        body_list = Body.objects.filter(vehicle_type__tag=request.GET.get('type'))
    else:
        body_list = Body.objects.filter(vehicle_type__tag='car')
    if category:
        vehicles = Vehicle.objects.filter(body_type__name=category)
    else:
        vehicles = Vehicle.objects.all()

    if request.user_agent.is_mobile:
        return render(request, 'main/automjeti/category/categoty_mobile.html', {
        'list': body_list,
        'vehicle': vehicles
    })
    else:
        return render(request, 'main/automjeti/category/category.html', {
            'list': body_list,
            'vehicle': vehicles
        })


def about_us(request):
    
    if request.user_agent.is_mobile:
        return render(request, 'main/about/about_us/about_us_mobile.html', {
        })
    else:
        return render(request, 'main/about/about_us/about_us.html', {
        })


@login_required
def save_vehicle(request):
    vehicle_id = request.GET.get('vehicle_id')
    user = request.user
    prev_save = list(SavedVehicle.objects.filter(vehicle_id=json.loads(vehicle_id), user_id=user.id))
    if len(prev_save) >0:
        return HttpResponse(status=201)
    else:
        SavedVehicle.objects.create(vehicle_id=json.loads(vehicle_id), user_id=user.id)
        return HttpResponse(status=201)


def contact_us(request):
    if request.method == 'POST':
        form = ContactUsForm(request.POST)
        if form.is_valid():
            form.save()
            messages.add_message(request, messages.INFO, 'Feedback Submitted.')
            return HttpResponseRedirect('/')
    else:
        form = ContactUsForm()

    if request.user_agent.is_mobile:
        return render(request, 'main/about/contact_us/contact_us_mobile.html', {
            'form': form
        })
    else:
        return render(request, 'main/about/contact_us/contact_us.html', {
            'form': form
        })


def _getFilters(type):
    return {
        'conditions': Condition.objects.all(),
        'sellers': Seller.objects.all(),
        'makes': _getMakes(type),
        'transmissions': Transmission.objects.all(),
        'fuels': Fuel.objects.all(),
        'bodies': _getBodies(type),
        'drivetrains': Drivetrain.objects.all(),
        'cylinders': Cylinder.objects.all(),
        'seating_caps': SeatingCap.objects.all(),
        'doors': Door.objects.all(),
        'currencies': Currency.objects.all(),
        'exColor': ExteriorColor.objects.all(),
        'inColor': InteriorColor.objects.all()
    }


def _getVehicles(vehicle_list):
    vehicles = list(vehicle_list)
    result_list = []
    for i in range(len(vehicles)):
        item = {
            'vehicle': vehicles[i],
            'gallery': (list(PhotoGallery.objects.filter(vehicle=vehicle_list[i]))),
            'options': (list(VehicleOption.objects.filter(vehicle=vehicle_list[i])))
        }
        result_list.append(item)

    return result_list


def _getMakes(type):
    makes = []
    vehicles = Vehicle.objects.filter(type__tag=type)

    for vehicle in vehicles:
        makes.append(vehicle.engine_type.model.make)

    return set(makes)


def _getModels(make):
    return list(set(list(Model.objects.filter(engine__model__make__name=json.loads(make)))))


def _getEngines(model):
    return list(set(list(Engine.objects.filter(model__name=json.loads(model)))))


def _getBodies(type):
    return list(set(list(Body.objects.filter(vehicle_type__tag=type))))

def _filterAll(req, filter_obj):
    if req.POST:
        order_by = json.loads(req.POST.get('order_by')) if req.POST.get('order_by') else 'production_year'
    else:
        order_by = req.GET.get('order_by') if req.POST.get('order_by') else 'production_year'

    # if (filter_obj['price__lte'] or filter_obj['price__gte']) and not filter_obj['currency__in']:
    if ('price__lte' in filter_obj or 'price__gte' in filter_obj and not 'currency__in' in filter_obj):
        le = Vehicle.objects.filter(
            reduce(operator.and_, (Q(**d) for d in [dict([i]) for i in filter_obj.items()]))).order_by(order_by)
        filter_obj['currency'] = 1
        exchange = EuroToLek.objects.get(pk=1)
        if 'price__lte' in filter_obj:
            try:
                filter_obj['price__lte'] = json.loads(filter_obj['price__lte']) * exchange.exchange
            except:
                filter_obj['price__lte'] = filter_obj['price__lte'] * exchange.exchange
            # filter_obj['price__lte'] = json.loads(filter_obj['price__lte']) * 135
        if 'price__gte' in filter_obj:
            try:
                filter_obj['price__gte'] = json.loads(filter_obj['price__gte']) * exchange.exchange
            except:
                filter_obj['price__gte'] = filter_obj['price__gte'] * exchange.exchange
        la = Vehicle.objects.filter(
            reduce(operator.and_, (Q(**d) for d in [dict([i]) for i in filter_obj.items()]))).order_by(order_by)
        listToReturn = list(le) + list(la)
        return list(set(listToReturn))

    if req.POST:
        order_by = json.loads(req.POST.get('order_by')) if req.POST.get('order_by') else 'production_year'
    else:
        order_by = req.GET.get('order_by') if req.POST.get('order_by') else 'production_year'

    if not filter_obj:
        l = Vehicle.objects.all().order_by(order_by)
    else:
        l = Vehicle.objects.filter(reduce(operator.and_, (Q(**d) for d in [dict([i]) for i in filter_obj.items()]))).order_by(order_by)
    return l


def _mapRequestData(request):
    filter_obj = {}
    if request.POST:
        for key in request.POST.keys():
            if key == 'order_by' or key == 'get_only':
                continue
            keyval = request.POST.get(key)
            if json.loads(keyval) == "empty":
                continue
            if keyval is not None and type(json.loads(keyval)) == list:
                print(keyval)
            if keyval is not None and keyval.isnumeric():
                valuelist = int(keyval)
            else:
                valuelist = json.loads(keyval)
            # filters.extend(['%s=%s' % (key, val) for val in valuelist])
            filter_obj[key] = valuelist
    else:
        for key in request.GET.keys():
            keyval = request.GET.get(key)
            try:
                keyval = json.loads(keyval)
                if keyval == "empty":
                    continue
                # if keyval is not None and type(keyval) == list:
                #     print(keyval)
                if keyval is not None and keyval.isnumeric():
                    valuelist = int(keyval)
                else:
                    valuelist = keyval
            except:
                if keyval == "empty":
                    continue
                # if keyval is not None and type(keyval) == list:
                #     print(keyval)
                # if keyval is not None and keyval.isnumeric():
                #     valuelist = int(keyval)
                else:
                    valuelist = keyval
            # filters.extend(['%s=%s' % (key, val) for val in valuelist])
            filter_obj[key] = valuelist

    return filter_obj


def _getMostPopular():
    most_popular = Vehicle.objects.filter(type__tag='car').order_by('popularity').reverse()[:10]
    res = []
    for vehicle in most_popular:
        res.append({
            'vehicle': vehicle,
            'photo': PhotoGallery.objects.filter(vehicle=vehicle.id)[:1]
        })
    return res


def _getDefaultLocation(location):
    return {
        'address': location.address,
        'geolocation': location.geolocation,
    }
