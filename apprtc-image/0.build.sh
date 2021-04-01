# Đây là file build image webrtc
docker build -t nobjta9xtq/webrtc:1.0 .
## rm backup image:
rm -f ./webrtc-img.tar.gz
## save to local image file
docker save -o webrtc-img.tar.gz nobjta9xtq/webrtc:1.0

# push to my private docker hub repository
docker push nobjta9xtq/webrtc:1.0
