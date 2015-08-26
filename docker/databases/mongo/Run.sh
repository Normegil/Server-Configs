#!/bin/bash
docker run \
	-d \
	--volumes-from data \
	--name db-mongo \
	database/mongo
