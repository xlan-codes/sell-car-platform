# Generated by Django 3.1.1 on 2020-09-03 18:44

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0006_auto_20200903_2041'),
    ]

    operations = [
        migrations.AddField(
            model_name='vehicle',
            name='cylinders',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='main_app.cylinder'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehicle',
            name='engine_type',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='main_app.engine'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehicle',
            name='exterior_color',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='main_app.exteriorcolor'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='vehicle',
            name='interior_color',
            field=models.ForeignKey(default=1, on_delete=django.db.models.deletion.CASCADE, to='main_app.interiorcolor'),
            preserve_default=False,
        ),
    ]
