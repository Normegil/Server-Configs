#!/bin/bash
docker run \
  -d \
  -v /config/no-ip/:/home/normegil/Server-Configs/docker/no-ip/ \
  --name data \
  data
