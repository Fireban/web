# Generated by Django 3.0.8 on 2020-10-16 16:14

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('hwInfo', '0002_auto_20201001_1350'),
    ]

    operations = [
        migrations.AddField(
            model_name='location',
            name='altValue',
            field=models.IntegerField(blank=True, default=0, verbose_name='고도'),
        ),
    ]
