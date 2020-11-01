# Generated by Django 3.1.1 on 2020-09-10 13:46

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0011_body_icon'),
    ]

    operations = [
        migrations.AddField(
            model_name='vehicle',
            name='consumption_city',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='vehicle',
            name='consumption_combined',
            field=models.FloatField(blank=True, null=True),
        ),
        migrations.AddField(
            model_name='vehicle',
            name='consumption_highway',
            field=models.FloatField(blank=True, null=True),
        ),
    ]