#!/bin/bash

docker stop mockserver
docker rm mockserver
docker run -d \
-p 80:1080 \
-p 443:1080 \
--name mockserver \
--restart=always \
mockserver/mockserver -serverPort 1080 -logLevel INFO
