# Generated by Django 3.1.1 on 2020-09-04 15:51

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0007_auto_20200903_2044'),
    ]

    operations = [
        migrations.AddField(
            model_name='engine',
            name='model',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='main_app.model'),
            preserve_default=False,
        ),
    ]