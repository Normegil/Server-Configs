#!/bin/bash
docker run \
  -d \
  -v ../servers/no-ip/config/:/etc/no-ip/ \
  -v ../servers/no-ip/scripts/:/scripts/no-ip/ \
  -v ../databases/mysql/config/:/etc/mysql/conf.d/ \
  -v ../databases/mysql/data/:/var/lib/mysql/ \
  -v ../databases/data:/data \
  -v ../applications/blog/data/:/var/lib/ghost/ \
  --name data \
  data
