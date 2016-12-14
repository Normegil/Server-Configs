#!/bin/bash
docker run \
	-d \
	-p 3000:80 \
	-e VIRTUAL_HOST=wiki.normegil.be \
	-v /home/normegil/Wiki/Pages:/var/dokuwiki-storage/data/pages \
	-v /home/normegil/Wiki/Configuration:/var/dokuwiki-storage/conf \
	--name app-wiki \
	server/wiki
