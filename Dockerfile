FROM node:latest

WORKDIR /app
COPY package.json /app/

RUN npm install && npm install -g nodemon
COPY app.js app.js
COPY views views
COPY public public
COPY images images
COPY server server
EXPOSE 5000
CMD ["npm", "start"]