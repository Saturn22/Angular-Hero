FROM node:current-alpine3.12 as build

RUN apk add chromium
WORKDIR /usr/local/app

ENV CHROME_BIN=/usr/bin/chromium-browser
COPY ./ /usr/local/app/

RUN npm install
RUN npm run test
