# Docker_Django_PostgresDB
&nbsp;
## This repo uses Docker container to set up Django, PostgresDB and pgadmin4 
## Prerequisite:
### Docker Desktop or Docker Engine
&nbsp;
## How to set up?
### Step1 Set up the containers
### Option1 Build all the docker images if they don't exist, create containers and run them
```
docker compose up -d
```
### Option2 Rebuild all the docker images even if they already exist, create containers and run them
```
docker compose up --build -d
```
### Remarks: If you only want to build/rebuild all the docker images, you can run this command
```
docker compose build -d
```
&nbsp;
### Step2 Connect pgadmin4 to the PostgresDB
#### Step2-1 Use the email and password set in the compose.yaml to log into the pgadmin4
#### Step2-2 Click 'Connect' 
#### Step2-3 Use the container name of the PostgresDB in the compose.yaml as the Host Name
#### Step2-4 Apply the database name, username, password set in the compose.yaml and click 'Save'  

&nbsp;
### Step3 Configure the settings.py of the Django project like this
#### The content in [] should be replaced with the value you set in the compose.yaml
```
DATABASES = {
    'default': {
        'ENGINE': 'django.db.backends.postgresql',
        'NAME': '[Database Name]',
        'USER': '[Username]',
        'PASSWORD': '[Password]',
        'HOST': '[PostgresDB Container Name]',
        'PORT': '5432',
    }
}

```

&nbsp;
### Remarks: If you don't have an existing Django project, you can create one with this command.
#### The content in [] should be replaced with the value you set in the compose.yaml
```
docker compose run --rm [Django Container Name] django-admin startproject [The Django Project Name You Like] [Save Location]
```

