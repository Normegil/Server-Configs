#!/bin/bash
docker run \
	-d \
	-p 3000:80 \
	-e VIRTUAL_HOST=wiki.normegil.be \
	--name app-wiki \
	istepanov/dokuwiki:2.0
