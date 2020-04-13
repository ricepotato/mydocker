#!/bin/bash

docker stop mockserver
docker rm mockserver
docker run -d --rm \
-p 443:443 \
--name mockserver \
mockserver/mockserver -serverPort 443 -logLevel INFO