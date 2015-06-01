#!/bin/bash
docker run \
	-d \
	-e MYSQL_ROOT_PASSWORD=root \
	--volumes-from data \
	--name db-mysql \
	database/mysql
