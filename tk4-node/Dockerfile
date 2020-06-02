FROM ubuntu:20.04

EXPOSE 8038 3270
VOLUME ["/data"]

RUN apt update -y && apt upgrade -y && apt install -y unzip 

RUN mkdir /tk4
COPY upstream/tk4-_v1.00_current.zip /tk4/dist.zip
COPY shadow.tar /tk4/shadow.tar
RUN cd /tk4 && unzip dist.zip
COPY changes/tk4-.cnf /tk4/conf/tk4-.conf
COPY changes/aarch64_support.tar.gz /tk4/aarch64_support.tar.gz
RUN cd /tk4 && tar xvf aarch64_support.tar.gz
COPY run.sh /

ENTRYPOINT /run.sh
