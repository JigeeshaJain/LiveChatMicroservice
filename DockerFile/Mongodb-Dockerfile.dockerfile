FROM ubuntu:18.04
RUN apt update; apt install -y gnupg2
RUN apt install -y software-properties-common
MAINTAINER Jigeesha Jain <jjain1@binghamton.edu>
RUN apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 9DA31620334BD75D9DCB49F368818C72E52529D4
RUN add-apt-repository 'deb [arch=amd64] https://repo.mongodb.org/apt/ubuntu bionic/mongodb-org/4.0 multiverse'
RUN apt update
RUN apt install -y mongodb-org
RUN mkdir /data
RUN mkdir /data/db
EXPOSE 27017
ENTRYPOINT ["mongod", "--bind_ip=0.0.0.0"]