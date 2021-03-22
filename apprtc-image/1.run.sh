# Đây là file run trên server vật lý sau khi cài image webrtc
## xóa home cũ của docker image
docker rm -f webrtc
## chạy script compose mới
docker-compose up -d
