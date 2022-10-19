FROM node:lts-alpine as builder
WORKDIR /app
COPY devops-app .
RUN npm install
RUN npm run build

FROM node:lts-alpine as runner
LABEL ENVIRONMENT="production" AUTHOR="Santiago Hurtado"
ENV ENV=prod
WORKDIR /app
COPY --from=builder /app .

CMD [ "npm", "run", "start" ]