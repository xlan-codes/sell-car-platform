# Generated by Django 3.1.1 on 2020-09-28 13:03

from django.db import migrations
import django_google_maps.fields


class Migration(migrations.Migration):

    dependencies = [
        ('users', '0006_auto_20200928_1421'),
    ]

    operations = [
        migrations.AlterField(
            model_name='location',
            name='address',
            field=django_google_maps.fields.AddressField(max_length=100),
        ),
    ]
