#!/bin/bash
docker run \
	--rm \
	--volumes-from app-wiki \
	-w / \
	-v $(pwd):/backup \
	ubuntu \
	tar xzvf /backup/dokuwiki-backup.tar.gz
