FROM node:7-slim

RUN apt-get -y update && apt-get -y install git

COPY package.json .

RUN npm install --production

EXPOSE 3000

CMD npm start
