# Generated by Django 3.1.1 on 2020-09-03 18:01

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('main_app', '0002_auto_20200903_1805'),
    ]

    operations = [
        migrations.CreateModel(
            name='Engine',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('engine_type', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='ExteriorColor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('color', models.CharField(max_length=20)),
            ],
        ),
        migrations.CreateModel(
            name='InteriorColor',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('color', models.CharField(max_length=20)),
            ],
        ),
        migrations.RemoveField(
            model_name='vehicle',
            name='make',
        ),
        migrations.RemoveField(
            model_name='vehicle',
            name='seller_type',
        ),
        migrations.RemoveField(
            model_name='vehicle',
            name='trim_type',
        ),
        migrations.AlterField(
            model_name='door',
            name='door_type',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='seatingcap',
            name='capacity',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='mileage',
            field=models.PositiveIntegerField(),
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='production_year',
            field=models.PositiveIntegerField(),
        ),
        migrations.CreateModel(
            name='Cylinder',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('cylinders', models.CharField(max_length=30)),
                ('model', models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_app.model')),
            ],
        ),
        migrations.AlterField(
            model_name='vehicle',
            name='exterior_color',
            field=models.ForeignKey(on_delete=django.db.models.deletion.CASCADE, to='main_app.exteriorcolor'),
        ),
    ]
