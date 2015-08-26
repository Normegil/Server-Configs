#!/bin/bash
docker run \
	-t \
	-v /var/run/docker.sock:/tmp/docker.sock:ro \
	-v $(pwd)/templates/:/etc/docker-gen/templates/ \
	--volumes-from app-reverse-proxy \
	--name app-reverse-proxy-config-updater \
	jwilder/docker-gen \
		-notify-sighup app-reverse-proxy \
		-watch \
		-only-exposed \
		/etc/docker-gen/templates/nginx.tmpl \
		/etc/nginx/conf.d/default.conf
