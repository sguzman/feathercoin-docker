FROM alpine
WORKDIR ~
RUN apk update
RUN apk add build-base
RUN apk add git
RUN apk add autoconf
RUN apk add automake
RUN apk add libtool
RUN apk add db-dev=4.8
RUN git clone https://github.com/FeatherCoin/Feathercoin
RUN aclocal
RUN autoheader
RUN ./autogen.sh
RUN ./configure
