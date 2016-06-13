#!/bin/bash
docker run \
	-d \
	-p 4000:80 \
	-e VIRTUAL_HOST=rss.normegil.be \
	--link db-mysql:mysql \
	--name app-rss \
	application/rss2
