#!/bin/bash

docker run -it --rm \
--name nginx_alpine \
-p 8089:80 \
alpine_nginx:latest
