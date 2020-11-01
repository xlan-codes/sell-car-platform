# Generated by Django 3.1.1 on 2020-09-04 18:26

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0009_remove_vehicle_model'),
    ]

    operations = [
        migrations.RenameField(
            model_name='body',
            old_name='body_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='condition',
            old_name='condition_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='currency',
            old_name='currency_name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='currency',
            old_name='currency_symbol',
            new_name='symbol',
        ),
        migrations.RenameField(
            model_name='currency',
            old_name='currency_tag',
            new_name='tag',
        ),
        migrations.RenameField(
            model_name='cylinder',
            old_name='cylinders',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='door',
            old_name='door_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='drivetrain',
            old_name='drivetrain_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='engine',
            old_name='engine_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='exteriorcolor',
            old_name='color',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='fuel',
            old_name='fuel_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='interiorcolor',
            old_name='color',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='make',
            old_name='make_logo',
            new_name='logo',
        ),
        migrations.RenameField(
            model_name='make',
            old_name='make_name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='model',
            old_name='model_name',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='seatingcap',
            old_name='capacity',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='seller',
            old_name='seller_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='transmission',
            old_name='transmission_type',
            new_name='name',
        ),
        migrations.RenameField(
            model_name='vehicletype',
            old_name='type_name',
            new_name='name',
        ),
    ]