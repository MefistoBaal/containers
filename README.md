# Practica contenedores Master DevOps & Cloud
## Autor: Santiago Hurtado Infante
---

Este repositorio contiene un ejercicio de practica para la parametrizacion de contenedores con Docker

Este repositorio de ejemplo contiene una aplicacion en [NestJS](https://nestjs.com/) conectado a una base de datos en [PostgreSQL](https://hub.docker.com/_/postgres)

---
## Deploy

Para desplegar este repositorio, basta con ejecutar el archivo [deploy.sh](deploy.sh)

Por buenas practicas, el deploy completo usa docker compose

```bash
./deploy.sh
```

El ejecutable construira la imagen de docker de NestJS, levantara la base de Datos en Postgresql y expondra un servicio REST-API en el puerto 8081, accesible en [http://localhost:8081](http://localhost:8081)

Para validar que el serivcio esta recibiendo peticiones correctamente, basta con entrar a la siguiente url [http://localhost:8081/users](http://localhost:8081/users), encontrará que el servicio retornó un par de llaves vacias ```[]```, esto demuetra que retorna un arreglo vacio de usuario debido a que no hay datos en la DB

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

---
## Publish
El ejecutable para publicar la imagen de docker en harbor es ```publish.sh```, hará un login al repositorio de Harbor, tageará la imagen de docker y luego la pusheará al repositorio de Harbor
```bash
./publish.sh
```
---
## Known Issues
Como problemas conocidos, suele pasar que los ejecutables no tengan permisos de ejecucion, para agregarlo, basta con ejecutar lo siguiente

```bash
chmod a+x *.sh
```