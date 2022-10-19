# Creando el stage para la instalacion de dependencias de la app
FROM node:lts-alpine as builder
WORKDIR /app
COPY devops-app .
RUN npm install
RUN npm run build

# Creando el stage que correrá la app
FROM node:lts-alpine as runner
LABEL ENVIRONMENT="production" AUTHOR="Santiago Hurtado"
ENV ENV=prod
WORKDIR /app
# Copiando el entrypoint al contenedor
COPY docker-entrypoint.sh /usr/local/bin/
# Copiando la aplicacion desde el stage anterior
COPY --from=builder /app .

ENTRYPOINT ["docker-entrypoint.sh"]
CMD [ "npm", "run", "start" ]