# Generated by Django 3.1.1 on 2020-09-09 11:50

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0010_auto_20200904_2026'),
    ]

    operations = [
        migrations.AddField(
            model_name='body',
            name='icon',
            field=models.TextField(blank=True),
        ),
    ]