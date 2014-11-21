FROM ubuntu:13.10
MAINTAINER Zaiste <oh [at] zaiste.net>

ENV DEBIAN_FRONTEND noninteractive
RUN apt-get -qq update
RUN apt-get -qq -y install build-essential python unzip sqlite3 libsqlite3-dev

ADD http://nodejs.org/dist/node-latest.tar.gz /tmp

RUN cd /tmp && \
    cd node-v* && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf node-v*

ADD https://ghost.org/zip/ghost-0.5.5.zip /tmp/ghost.zip
RUN unzip -d /ghost /tmp/ghost.zip
ADD config.js /ghost/config.js

WORKDIR /ghost

RUN npm install --production
RUN npm install sqlite3 --build-from-source

ENV NODE_ENV production
ENV GHOST_URL http://ghost-blog.com
EXPOSE 2368

CMD ["npm", "start"]
