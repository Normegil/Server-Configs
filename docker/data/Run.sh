#!/bin/bash
docker run \
  -d \
  -v /config/no-ip/:~/Config/docker/no-ip/ \
  --name data \
  data
