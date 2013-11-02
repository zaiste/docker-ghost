FROM ubuntu 
MAINTAINER Zaiste <oh [at] zaiste.net>

RUN echo "deb http://archive.ubuntu.com/ubuntu precise main universe" >> /etc/apt/sources.list
RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y build-essential python-software-properties python g++ make software-properties-common sqlite3 libsqlite3-dev curl

RUN add-apt-repository ppa:chris-lea/node.js 
RUN apt-get update
RUN apt-get install -y nodejs

ADD ./ghost /ghost
RUN sed -i -e 's/127.0.0.1/0.0.0.0/g' ghost/config.example.js

WORKDIR /ghost

RUN npm install --production
RUN npm install sqlite3 --build-from-source

EXPOSE 2368

CMD ["npm", "start"]