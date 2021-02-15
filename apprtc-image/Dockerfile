FROM ghcr.io/linuxserver/openssh-server

RUN apk update && apk add --no-cache 'python2'

COPY ./webrtc/sdk.tar.gz /root/
RUN tar -xvzf /root/sdk.tar.gz -C /root
RUN rm -f /root/sdk.tar.gz

COPY ./webrtc/full.pem /root/
COPY ./webrtc/key.pem /root/

COPY ./webrtc/app_engine.tar.gz /root/
RUN tar -xvzf /root/app_engine.tar.gz -C /root
RUN rm -f /root/app_engine.tar.gz

CMD /root/google-cloud-sdk/bin/dev_appserver.py \
--ssl_certificate_path /root/full.pem \
--ssl_certificate_key_path /root/key.pem \
--enable_host_checking false --dev_appserver_log_level debug \
--go_debugging true --admin_host $HOST \
--host $HOST --specified_service_ports default:8442  /root/app_engine/

# ssh, web, https web
EXPOSE 2222 8442 8443 8000

# config constant.py ra ngoài docker (file này không cần compile mà chạy luôn được)
# tiep theo: tách riêng turnserver và colider ra riêng 2 docker khác nhau
