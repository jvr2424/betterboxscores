"""
Django settings for betterboxscores project.

Generated by 'django-admin startproject' using Django 3.1.5.

For more information on this file, see
https://docs.djangoproject.com/en/3.1/topics/settings/

For the full list of settings and their values, see
https://docs.djangoproject.com/en/3.1/ref/settings/
"""
import os
from pathlib import Path
import re

# Build paths inside the project like this: BASE_DIR / 'subdir'.
BASE_DIR = Path(__file__).resolve().parent.parent

# Quick-start development settings - unsuitable for production
# See https://docs.djangoproject.com/en/3.1/howto/deployment/checklist/

# SECURITY WARNING: keep the secret key used in production secret!
SECRET_KEY = '%0pczc6erl@64djr6006zm45*v_1of$3+bn16ezj2p=in9s8ze'

# SECURITY WARNING: don't run with debug turned on in production!
DEBUG = True
print(DEBUG)

ALLOWED_HOSTS = []

# Application definition

INSTALLED_APPS = [
    'gamerecaps.apps.GamerecapsConfig',
    'django.contrib.admin',
    'django.contrib.auth',
    'django.contrib.contenttypes',
    'django.contrib.sessions',
    'django.contrib.messages',
    'django.contrib.staticfiles',
    'storages',
    'rest_framework',
]

MIDDLEWARE = [
    'django.middleware.security.SecurityMiddleware',
    'django.contrib.sessions.middleware.SessionMiddleware',
    'django.middleware.common.CommonMiddleware',
    'django.middleware.csrf.CsrfViewMiddleware',
    'django.contrib.auth.middleware.AuthenticationMiddleware',
    'django.contrib.messages.middleware.MessageMiddleware',
    'django.middleware.clickjacking.XFrameOptionsMiddleware',
]

ROOT_URLCONF = 'betterboxscores.urls'

TEMPLATES = [
    {
        'BACKEND': 'django.template.backends.django.DjangoTemplates',
        'DIRS': [],
        'APP_DIRS': True,
        'OPTIONS': {
            'context_processors': [
                'django.template.context_processors.debug',
                'django.template.context_processors.request',
                'django.contrib.auth.context_processors.auth',
                'django.contrib.messages.context_processors.messages',
            ],
        },
    },
]

WSGI_APPLICATION = 'betterboxscores.wsgi.application'

# Database
# https://docs.djangoproject.com/en/3.1/ref/settings/#databases
# DATABASE_URL:               postgres://{user}:{password}@{hostname}:{port}/{database-name}
DATABASE_URL = os.environ.get('DATABASE_URL')
user_match = re.search('(://)(.+?(?=:))', DATABASE_URL)
user = user_match.group(2)

password_match = re.search('(:)((?!//).+?(?=@))', DATABASE_URL)
password = password_match.group(2)

hostname_match = re.search('(@)(.+?(?=:))', DATABASE_URL)
hostname = hostname_match.group(2)

port_match = re.search('(:)([0-9]+(?=/))', DATABASE_URL)
port = port_match.group(2)

database_name_match = re.search(f'(?<={port})(/)(.+?$)', DATABASE_URL)
database_name = database_name_match.group(2)

DATABASES = {
    # 'default': {
    #     'ENGINE': 'django.db.backends.sqlite3',
    #     'NAME': BASE_DIR / 'db.sqlite3',
    # },

    'default': {
        'ENGINE': 'django.db.backends.postgresql_psycopg2',

        'NAME': database_name,

        'USER': user,

        'PASSWORD': password,

        'HOST': hostname,

        'PORT': port,

    }

}

# Password validation
# https://docs.djangoproject.com/en/3.1/ref/settings/#auth-password-validators

AUTH_PASSWORD_VALIDATORS = [
    {
        'NAME': 'django.contrib.auth.password_validation.UserAttributeSimilarityValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.MinimumLengthValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.CommonPasswordValidator',
    },
    {
        'NAME': 'django.contrib.auth.password_validation.NumericPasswordValidator',
    },
]

# Internationalization
# https://docs.djangoproject.com/en/3.1/topics/i18n/

LANGUAGE_CODE = 'en-us'

TIME_ZONE = 'UTC'

USE_I18N = True

USE_L10N = True

USE_TZ = True

# Static files (CSS, JavaScript, Images)
# https://docs.djangoproject.com/en/3.1/howto/static-files/


DEFAULT_FILE_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
STATICFILES_STORAGE = 'storages.backends.s3boto3.S3Boto3Storage'
# STATICFILES_STORAGE = 'django.contrib.staticfiles.storage.StaticFilesStorage'

AWS_ACCESS_KEY_ID = os.environ.get('AWS_ACCESS_KEY')
AWS_SECRET_ACCESS_KEY = os.environ.get('AWS_SECRET_KEY')
AWS_STORAGE_BUCKET_NAME = os.environ.get('AWS_BUCKET_NAME')
AWS_DEFAULT_ACL = None  # 'public-read' #inherits buckets permissions
AWS_QUERYSTRING_AUTH = True
AWS_S3_VERIFY = True

STATIC_URL = f'https://{AWS_STORAGE_BUCKET_NAME}.s3.amazonaws.com/'
# STATIC_URL = 'static/'
STATICFILES_DIRS = [
    os.path.join(BASE_DIR, 'static'),
]
