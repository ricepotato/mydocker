#!/bin/bash

docker run -d \
-p 8080:8080 \
--name adminer \
--net=qinet \
--link qidb:db \
--restart=always \
--net=some_net \
adminer:latest
