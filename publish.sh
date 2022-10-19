#!/bin/bash

# Publicando la imagen de docker a harbor
docker login https://harbor.tallerdevops.com/

# Creando tag de la app
docker tag containers-app:latest harbor.tallerdevops.com/santiago-hurtado-p3/devops-app:latest

# Enviando la app a harbor
docker push harbor.tallerdevops.com/santiago-hurtado-p3/devops-app:latest