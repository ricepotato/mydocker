#!/bin/bash

docker stop mockserver
docker rm mockserver
docker run -d --rm \
-p 1080:1080 \
--name mockserver \
mockserver/mockserver -serverPort 1080 -logLevel INFO