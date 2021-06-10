FROM node:latest

WORKDIR /app

COPY ./environments-sample/package*.json ./

RUN npm ci

COPY ./environments-sample ./

EXPOSE 3000

CMD [ "npm", "run", "start" ]
