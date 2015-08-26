#!/bin/bash
docker run \
	-d \
	-t \
	-p 80:80 \
	-p 443:443 \
	-v certificates/:/etc/nginx/certs/ \
	-v /tmp/nginx:/etc/nginx/conf.d \
	--name app-reverse-proxy \
	nginx
