FROM ubuntu:13.10
MAINTAINER Zaiste <oh [at] zaiste.net>

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential g++ make sqlite3 libsqlite3-dev

ADD http://nodejs.org/dist/node-latest.tar.gz /tmp
RUN cd /tmp && \
    cd node-v* && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf node-v*

ADD ./ghost /ghost
RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' ghost/config.example.js

WORKDIR /ghost

RUN npm install --production
RUN npm install sqlite3 --build-from-source

EXPOSE 2368

CMD ["npm", "start"]
