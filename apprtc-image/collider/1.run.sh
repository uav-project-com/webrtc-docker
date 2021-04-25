docker rm -f collider
docker run --name collider -p 2223:2222 -p 9443:9443 -d -it \
	-e SUDO_ACCESS=true \
	-e PASSWORD_ACCESS=true \
	-e USER_PASSWORD=canhthong \
	-e USER_NAME=admin \
	-e HTTPS_ROOM_URL=https://phicongtre.site:8443 \
  -v ${PWD}/cert/key.pem:/cert/key.pem \
	-v ${PWD}/cert/cert.pem:/cert/cert.pem \
	nobjta9xtq/collider:1.0

