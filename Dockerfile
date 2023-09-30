FROM node:latest

WORKDIR /app
COPY package.json package-lock.json /app/

RUN npm install \
    express dotenv express-handlebars body-parser mysql \
    --save \
    && npm install --save-dev nodemon

EXPOSE 5000
CMD ["npm", "start"]