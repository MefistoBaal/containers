#!/bin/bash

# Construyendo la imagen de docker para el serivicio principal
docker-compose build

# Levantando los servicio principales en modo "detach"
docker-compose up -d

# Revisando que los servicios esten levantados
docker ps

echo "Esperando a que el servicio esté en linea..."
ping localhost -p 8081 -c 10

# Mostrando los logs en pantalla
docker-compose logs