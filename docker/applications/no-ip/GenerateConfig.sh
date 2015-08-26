#!/bin/bash
docker run -it -p 8245:8245 --volumes-from data --name no-ip-config-generator server/no-ip /noip/noip2 -c /etc/no-ip/noip2.conf -C
