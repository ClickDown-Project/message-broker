# syntax=docker/dockerfile:1
FROM node:14.16

WORKDIR /message-broker

COPY ["package.json", "yarn.lock", "./message-broker/"]

COPY . /message-broker

RUN cd /message-broker \ && yarn install

CMD ["yarn", "start:dev"]
