docker rm -f collider
docker run --name collider -p 2223:2222 -p 9443:9443 -d -it \
	-e SUDO_ACCESS=true \
	-e PASSWORD_ACCESS=true \
	-e USER_PASSWORD=canhthong \
	-e USER_NAME=admin \
	-e HTTPS_ROOM_URL=https://phicongtre.site:5443 \
	-e SSL_PORT=9443 \
        -v private.key:/cert/key.pem \
	-v certificate.crt:/cert/cert.pem \
	collider:1.0 

