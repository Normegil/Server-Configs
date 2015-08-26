#!/bin/bash
docker run \
	-d \
	-e VIRTUAL_HOST=blog.normegil.be \
	-p 2368:2368 \
	--name app-theprocess \
	application/blog-theprocess
