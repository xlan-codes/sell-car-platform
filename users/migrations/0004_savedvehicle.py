# Generated by Django 3.1.1 on 2020-09-08 18:36

from django.conf import settings
from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0010_auto_20200904_2026'),
        ('users', '0003_customuser_display_name'),
    ]

    operations = [
        migrations.CreateModel(
            name='SavedVehicle',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('user', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to=settings.AUTH_USER_MODEL)),
                ('vehicle', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_app.vehicle')),
            ],
        ),
    ]
