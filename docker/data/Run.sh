#!/bin/bash
docker run \
  -d \
  -v /home/normegil/Server-Configs/docker/servers/no-ip/config/:/etc/no-ip/ \
  -v /home/normegil/Server-Configs/docker/servers/no-ip/scripts/:/scripts/no-ip/ \
  -v /home/normegil/Server-Configs/docker/databases/mysql/config/:/etc/mysql/conf.d/ \
  -v /home/normegil/Server-Configs/docker/databases/mysql/data/:/var/lib/mysql/ \
  --name data \
  data
