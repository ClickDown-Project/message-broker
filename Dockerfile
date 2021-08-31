# syntax=docker/dockerfile:1
FROM node:14.16-alpine

WORKDIR /message-broker

COPY . /message-broker

RUN cd /message-broker \ && yarn install

CMD ["yarn", "start:dev"]
