from django.db import models


class Seller(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class VehicleType(models.Model):
    name = models.CharField(max_length=50)
    tag = models.CharField(max_length=50)
    search_type = models.PositiveIntegerField()
    banner = models.ImageField(upload_to='vehicle/banner')

    def __str__(self):
        return self.name


class Make(models.Model):
    name = models.CharField(max_length=50)
    logo = models.CharField(max_length=400)

    def __str__(self):
        return self.name


class Model(models.Model):
    name = models.CharField(max_length=50)
    make = models.ForeignKey(Make, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Body(models.Model):
    name = models.CharField(max_length=50)
    icon = models.TextField(blank=True)
    vehicle_type = models.ForeignKey(VehicleType, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Door(models.Model):
    name = models.PositiveIntegerField()

    def __str__(self):
        return str(self.name)


class Condition(models.Model):
    name = models.CharField(max_length=50)
    tag = models.CharField(max_length=30, blank=True)

    def __str__(self):
        return self.name


# class Trim(models.Model):
#     trim_type = models.CharField(max_length=50)
#     model_type_id = models.ForeignKey(Model, default=None, on_delete=models.CASCADE)
#
#     def __str__(self):
#         return self.trim_type


class Drivetrain(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Fuel(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Engine(models.Model):
    name = models.CharField(max_length=50)
    model = models.ForeignKey(Model, on_delete=models.CASCADE)

    def __str__(self):
        return self.model.name + ' ' + self.name


class Cylinder(models.Model):
    name = models.CharField(max_length=30)
    # model = models.ForeignKey(Model, on_delete=models.CASCADE)

    def __str__(self):
        return self.name


class Transmission(models.Model):
    name = models.CharField(max_length=50)

    def __str__(self):
        return self.name


class Currency(models.Model):
    name = models.CharField(max_length=20, null=True, blank=True)
    tag = models.CharField(max_length=4)
    symbol = models.CharField(max_length=255, null=True, blank=True)

    def __str__(self):
        return self.name


class SeatingCap(models.Model):
    name = models.PositiveIntegerField()

    def __str__(self):
        return str(self.name)


class InteriorColor(models.Model):
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class ExteriorColor(models.Model):
    name = models.CharField(max_length=20)

    def __str__(self):
        return self.name


class Vehicle(models.Model):
    type = models.ForeignKey(VehicleType, on_delete=models.CASCADE)
    extra_name = models.CharField(max_length=20, blank=True)
    body_type = models.ForeignKey(Body, on_delete=models.CASCADE)
    door_type = models.ForeignKey(Door, on_delete=models.CASCADE)
    condition_type = models.ForeignKey(Condition, on_delete=models.CASCADE)
    drivetrain_type = models.ForeignKey(Drivetrain, on_delete=models.CASCADE)
    fuel_type = models.ForeignKey(Fuel, on_delete=models.CASCADE)
    engine_type = models.ForeignKey(Engine, on_delete=models.CASCADE)
    consumption_city = models.FloatField(blank=True, null=True)
    consumption_highway = models.FloatField(blank=True, null=True)
    consumption_combined = models.FloatField(blank=True, null=True)
    cylinders = models.ForeignKey(Cylinder, on_delete=models.CASCADE)
    transmission_type = models.ForeignKey(Transmission, on_delete=models.CASCADE)
    seating_cap = models.ForeignKey(SeatingCap, on_delete=models.CASCADE)
    user = models.ForeignKey('users.CustomUser', on_delete=models.CASCADE)
    production_year = models.PositiveIntegerField()
    mileage = models.PositiveIntegerField()
    price = models.PositiveIntegerField()
    currency = models.ForeignKey(Currency, on_delete=models.CASCADE)
    exterior_color = models.ForeignKey(ExteriorColor, on_delete=models.CASCADE)
    interior_color = models.ForeignKey(InteriorColor, on_delete=models.CASCADE)
    description = models.TextField(null=True, blank=True)
    popularity = models.PositiveIntegerField()
    created_at = models.DateTimeField(auto_now_add=True)
    gallery = []

    def __str__(self):
        return self.engine_type.name + ' ' + self.engine_type.model.name + '/ ' + self.user.email


class PhotoGallery(models.Model):
    vehicle = models.ForeignKey(Vehicle, on_delete=models.CASCADE)
    photo = models.TextField()

    def __str__(self):
        return self.vehicle.engine_type.model.make.name + ' ' + self.vehicle.engine_type.model.name + '/ ' + self.vehicle.user.email


class VehicleHighlights(models.Model):
    vehicle = models.ForeignKey(Vehicle, on_delete=models.CASCADE)
    highlight_name = models.CharField(max_length=60)

    def __str__(self):
        return self.highlight_name


class VehicleOption(models.Model):
    vehicle = models.ForeignKey(Vehicle, on_delete=models.CASCADE)
    option_name = models.CharField(max_length=60)

    def __str__(self):
        return self.option_name


# class HeaderSearch(models.Model):
#     header_option_name = models.CharField(max_length=40)
#     header_option_tag = models.CharField(max_length=30)
#
#     def __str__(self):
#         return self.header_option_name


class SearchOption(models.Model):
    search_option_name = models.CharField(max_length=40)
    search_option_tag = models.CharField(max_length=30)

    def __str__(self):
        return self.search_option_name


class ContactUs(models.Model):
    name = models.CharField(max_length=200, help_text="Name of the sender")
    email = models.EmailField(max_length=200)
    phone = models.CharField(max_length=12)
    message = models.TextField()
    date = models.DateTimeField(auto_now_add=True)

    class Meta:
        verbose_name_plural = "ContactUs"

    def __str__(self):
        return self.name + "-" +  self.email


class EuroToLek(models.Model):
    exchange = models.FloatField()

    def __str__(self):
        return 'Euro ne lek'
