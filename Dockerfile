FROM frolvlad/alpine-glibc

ENV applicationName=Alpine
ENV tierName=Web
ENV nodeName=docker

RUN apk add --no-cache --virtual=.build-dependencies libc6-compat bash nodejs

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 3000
CMD ["node", "index.js"]
