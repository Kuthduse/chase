FROM node:alpine

WORKDIR /app

COPY package*.json ./

RUN apk update && apk upgrade && \
    apk add --no-cache openssl curl bash

RUN npm install

COPY . .

RUN chmod +x app.js ryx cox wals

EXPOSE 7860

CMD ["node", "app.js"]
