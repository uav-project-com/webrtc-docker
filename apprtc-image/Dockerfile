FROM ghcr.io/linuxserver/openssh-server

RUN apk update && apk add python2<=2.7.18

COPY ./webrtc/sdk.tar.gz /root/
RUN tar -xvzf /root/sdk.tar.gz -C /root
RUN rm -rf /root/sdk.tar.gz

COPY ./webrtc/full.pem /root/
COPY ./webrtc/key.pem /root/

COPY ./webrtc/app_engine.tar.gz /root/
RUN tar -xvzf /root/app_engine.tar.gz -C /root
RUN rm -rf /root/app_engine.tar.gz

# config constant.py ra ngoài docker (file này không cần compile mà chạy luôn được)
# tiep theo: tách riêng turnserver và colider ra riêng 2 docker khác nhau
