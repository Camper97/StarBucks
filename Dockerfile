FROM node:latest AS base
WORKDIR /app
COPY package.json .
RUN npm install
COPY . . 
EXPOSE 8080
CMD [ "node", "index.js" ]