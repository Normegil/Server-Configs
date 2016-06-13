#!/bin/bash
docker run \
  -d \
  -p 4000:80 \
  -p 4001:443 \
  -e VIRTUAL_HOST=dav.normegil.be \
  -v $(pwd)/data:/var/www/baikal-regular/Specific/db \
  --name app-baikal \
  sparklyballs/baikal
