# Generated by Django 3.0.8 on 2020-11-11 10:53

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('detect', '0007_targetimage_isupdated'),
    ]

    operations = [
        migrations.AlterField(
            model_name='detectioninfo',
            name='height',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='height'),
        ),
        migrations.AlterField(
            model_name='detectioninfo',
            name='width',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='width'),
        ),
        migrations.AlterField(
            model_name='targetdetection',
            name='xmax',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='xmax'),
        ),
        migrations.AlterField(
            model_name='targetdetection',
            name='xmin',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='xmin'),
        ),
        migrations.AlterField(
            model_name='targetdetection',
            name='ymax',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='ymax'),
        ),
        migrations.AlterField(
            model_name='targetdetection',
            name='ymin',
            field=models.FloatField(blank=True, default=0, null=True, verbose_name='ymin'),
        ),
    ]
