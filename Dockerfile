FROM node:16-alpine3.17

WORKDIR /app

COPY package*.json ./

RUN yarn install

COPY . .

EXPOSE 3000

CMD ["yarn", "dev"]