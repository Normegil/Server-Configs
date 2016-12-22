#!/bin/bash
docker run \
    -d \
    -p 8085:8085 \
    -v /home/normegil/Books/Config:/config \
    -v /home/normegil/Books/Data:/media \
    -v /etc/localtime:/etc/localtime:ro \
    --name=app-books BusterBrawls/ubooquity
