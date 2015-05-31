#!/bin/bash
docker run \
  -d \
  -v /home/normegil/Server-Configs/docker/no-ip/:/config/no-ip/ \
  --name data \
  data
