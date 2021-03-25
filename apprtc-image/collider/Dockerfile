FROM ghcr.io/linuxserver/openssh-server

ENV SUDO_ACCESS=true \
 PASSWORD_ACCESS=true \
 USER_PASSWORD=canhthong \
 USER_NAME=admin
RUN set -ex && \
    apk add --no-cache go git

RUN mkdir /cert && mkdir /root/goWorkspace
ENV GOPATH=$HOME/goWorkspace
RUN mkdir -p $GOPATH/src
COPY ./apprtc.tar.gz /root/
RUN tar xzvf /root/apprtc.tar.gz -C /root/ && rm /root/apprtc.tar.gz
RUN ln -s /root/apprtc/src/collider/collider $GOPATH/src 
RUN ln -s /root/apprtc/src/collider/collidermain $GOPATH/src
RUN ln -s /root/apprtc/src/collider/collidertest $GOPATH/src
RUN go get collidermain
RUN go install collidermain


CMD $GOPATH/bin/collidermain -tls=true -port=$SSL_PORT -room-server=$HTTPS_ROOM_URL 

CMD less /dev/null

EXPOSE 2222 $SSL_PORT 
