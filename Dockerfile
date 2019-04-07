FROM node:8-alpine
MAINTAINER Mark Rapson <markrapson.1991@gmail.com>

WORKDIR /opt/app
ADD . /opt/app

RUN npm install -g yarn \
    yarn build

CMD ["yarn workspace server start"]
