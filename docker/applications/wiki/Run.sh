#!/bin/bash
sudo docker run \
	-d \
	-p 3000:80 \
	-e VIRTUAL_HOST=wiki.normegil.be \
	-v $WIKI_HOME:/var/dokuwiki-storage \
	--name app-wiki \
	server/wiki
