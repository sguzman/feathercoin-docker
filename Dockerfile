FROM alpine
WORKDIR ~
RUN apk update
RUN apk add build-base git autoconf automake libtool boost-dev openssl-dev libevent-dev
RUN git clone https://github.com/FeatherCoin/Feathercoin
WORKDIR Feathercoin
RUN ./autogen.sh
RUN ./configure --with-incompatible-bdb
