FROM ghcr.io/linuxserver/baseimage-alpine:3.12

RUN set -ex && \
    apk add --no-cache gcc musl-dev make sqlite sqlite-dev pkgconfig libressl-dev linux-headers 

RUN set -ex && \
    rm -f /usr/libexec/gcc/x86_64-alpine-linux-musl/6.4.0/cc1obj && \
    rm -f /usr/libexec/gcc/x86_64-alpine-linux-musl/6.4.0/lto1 && \
    rm -f /usr/libexec/gcc/x86_64-alpine-linux-musl/6.4.0/lto-wrapper && \
    rm -f /usr/bin/x86_64-alpine-linux-musl-gcj

COPY ./turnserver-4.5.0.8.tar.gz /root/
COPY ./libevent-2.1.11-stable.tar.gz /root/
ADD turnserver.conf /etc/

RUN tar xzvf /root/turnserver-4.5.0.8.tar.gz -C /root/
RUN tar xzvf /root/libevent-2.1.11-stable.tar.gz -C /root/

RUN cd /root/libevent-2.1.11-stable && ./configure && make && make install

RUN cd /root/turnserver-4.5.0.8 && ./configure && make && make install

RUN rm -rf /root/turnserver*
RUN rm -rf /root/libevent*

CMD turnserver

EXPOSE 3478 5349
