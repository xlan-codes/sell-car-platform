# Generated by Django 3.1.1 on 2020-09-03 18:21

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0004_remove_vehicle_exterior_color'),
    ]

    operations = [
        migrations.RemoveField(
            model_name='vehicle',
            name='engine_type',
        ),
    ]