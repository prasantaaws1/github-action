FROM node:19.6

WORKDIR /app
RUN npm init
RUN npm install express
COPY package*.json ./
RUN npm install
COPY .. ./
CMD node index.js
