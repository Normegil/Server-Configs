#!/bin/bash
sudo docker run \
	-it \
  --rm \
	-p 3000:80 \
	-e VIRTUAL_HOST=wiki.normegil.be \
	-v $WIKI_HOME/pages:/var/dokuwiki-storage/data/pages \
	-v $WIKI_HOME/configuration:/var/dokuwiki-storage/conf \
	server/wiki \
  sh
