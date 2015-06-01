#!/bin/bash
docker run -d -p 8245:8245 --volumes-from data --name no-ip server/no-ip
