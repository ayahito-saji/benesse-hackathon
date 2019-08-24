FROM node:8.11.3-alpine

WORKDIR /src

RUN apk update && \
    npm install -g npm @vue/cli
