FROM node:16

ENV MONGODB_CONNECTION_PROTOCOL mongodb+srv
ENV MONGODB_DB_NAME gha-demo1
ENV MONGODB_CLUSTER_ADDRESS cluster0.flrwufr.mongodb.net
ENV MONGODB_USERNAME toufiqurraa
ENV MONGODB_PASSWORD PNz6Hz9DgikkyTqO

WORKDIR /app

COPY package*.json .

RUN npm install

COPY . .

CMD ["npm", "start"]