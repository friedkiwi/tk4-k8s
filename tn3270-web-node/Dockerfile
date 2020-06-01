FROM ubuntu:latest

RUN apt-get update -y && apt-get install -y build-essential automake autoconf libtool libssl-dev c3270

# shellinabox
COPY shellinabox /shellinabox
RUN cd /shellinabox && autoreconf -fi && ./configure --enable-static --disable-shared --disable-ssl && make && make install

COPY run.sh /run.sh

ENTRYPOINT /run.sh
