# Generated by Django 3.1.1 on 2020-09-10 16:52

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0015_vehicletype_tag'),
    ]

    operations = [
        migrations.AddField(
            model_name='vehicletype',
            name='banner',
            field=models.ImageField(default=1, upload_to='vehicle/banner'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehicletype',
            name='search_type',
            field=models.PositiveIntegerField(default=1),
            preserve_default=False,
        ),
    ]
