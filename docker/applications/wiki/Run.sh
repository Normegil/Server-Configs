#!/bin/bash
docker run \
	-d \
	-p 6067:6067 \
	-v /root/Server-Configs/docker/applications/wiki/data:/wiki \
	-e VIRTUAL_HOST=wiki.normegil.be \
	--volumes-from data \
	--name app-wiki \
	application/wiki
