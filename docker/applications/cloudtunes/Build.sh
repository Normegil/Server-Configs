#!/bin/bash
git clone https://github.com/jkbrzt/cloudtunes.git cloudtunes
cd cloudtunes/
cp ../config/local.py cloudtunes-server/cloudtunes/settings/local.py
cd ../
docker build -t application/cloudtunes ./server
docker build -t application/cloudtunes ./client
