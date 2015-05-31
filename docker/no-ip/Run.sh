#!/bin/bash
docker run -it -p 8245:8245 --volumes-from data --name no-ip server/no-ip /bin/bash
