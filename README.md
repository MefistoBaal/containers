# Practica contenedores Master DevOps & Cloud
## Autor: Santiago Hurtado Infante
---

Este repositorio contiene un ejercicio de practica para la parametrizacion de contenedores con Docker

Este repositorio de ejemplo contiene una aplicacion en [NestJS](https://nestjs.com/) conectado a una base de datos en [PostgreSQL](https://hub.docker.com/_/postgres)

---
## Deploy

Para desplegar este repositorio, basta con ejecutar el archivo [deploy.sh](deploy.sh)

```bash
./deploy.sh
```

El ejecutable construira la imagen de docker de NestJS, levantara la base de Datos en Postgresql y expondra un servicio REST-API en el puerto 8081, accesible en [http://localhost:8081](http://localhost:8081)

---
## CleanUp

El Ejecutable de limpieza, se encargara de remover y dar de baja los servicios levantados con Docker, recibe un paramentro por consola que tambien eliminara las carpetas creadas para la persistencia de la DB, ese parametro es opcional

Purgar unicamente los servicios
```bash
./clean.sh
```

Purgar los servicios junto a las carpetas de persistencia
```bash
./clean true
```