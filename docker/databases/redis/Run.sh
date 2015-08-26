#!/bin/bash
docker run \
	-d \
	--volumes-from data \
	--name db-redis \
	redis \
	redis-server
#	--append-only yes
