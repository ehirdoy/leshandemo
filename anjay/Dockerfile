FROM ubuntu:18.04
RUN apt-get update -y
RUN apt install -y git build-essential cmake libmbedtls-dev zlib1g-dev
RUN apt install -y netcat
RUN apt-get dist-upgrade -y
RUN apt-get autoremove
RUN git clone https://github.com/AVSystem/Anjay.git \
    && cd Anjay \
    && git submodule update --init \
    && cmake . \
    && make -j9
CMD /Anjay/output/bin/demo -t -u coap://gw:5683
