# Đây là file build image webrtc
docker build -t webrtc:1.0 .
## backup image:
rm -f ./webrtc-img.tar.gz
docker save -o webrtc-img.tar.gz webrtc:1.0
