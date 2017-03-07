FROM frolvlad/alpine-glibc

ENV applicationName=Alpine
ENV tierName=Web
ENV nodeName=docker

RUN apk add --no-cache bash nodejs
RUN apk add --no-cache --force libc6-compat

RUN mkdir -p /usr/src/app
WORKDIR /usr/src/app

COPY package.json /usr/src/app/
RUN npm install

COPY . /usr/src/app

EXPOSE 3000
CMD ["node", "index.js"]
