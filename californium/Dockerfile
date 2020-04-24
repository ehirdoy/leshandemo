FROM ubuntu:18.04

RUN apt-get update -y && apt-get dist-upgrade -y && apt-get autoremove
RUN apt-get install -y git build-essential cmake libmbedtls-dev zlib1g-dev
RUN apt-get install -y maven
RUN git clone https://github.com/eclipse/californium.git
RUN cd californium && mvn clean install
