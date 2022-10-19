#!/bin/bash

# Eliminando contenedores, imagenes y contenedores huerfanos
docker-compose down --rmi all --remove-orphans

# Purgando todo el sistema
docker system prune -a

# Eliminando la carpeta que persiste los datos de postgres
sudo rm -rf pgsql-data