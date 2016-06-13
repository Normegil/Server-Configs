#!/bin/bash
docker run \
  --rm \
  --volumes-from app-wiki \
  -v $(pwd):/backup \
  ubuntu \
  tar zcvf /backup/dokuwiki-backup.tar.gz /var/dokuwiki-storage
