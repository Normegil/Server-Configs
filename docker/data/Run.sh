#!/bin/bash
docker run \
  -d \
  -v /home/normegil/Server-Configs/docker/no-ip/config/:/etc/no-ip/ \
  -v /home/normegil/Server-Configs/docker/no-ip/scripts/:/scripts/no-ip/ \
  --name data \
  data
