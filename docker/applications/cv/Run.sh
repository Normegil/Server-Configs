#!/bin/bash
docker run \
	-d \
	-e VIRTUAL_HOST=cv.normegil.be \
	-p 3500:8080 \
	--name app-cv \
	application/cv
