#!/bin/bash
docker run \
	-d \
	-p 5000:80 \
	-e VIRTUAL_HOST=rss.normegil.be \
	--name app-rss \
	miniflux/miniflux:latest
