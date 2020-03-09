#!/bin/bash

docker stop storage
docker rm storage
docker run -d \
-p 27071:27017 \
--name storage \
--restart=always \
-v /storage/mongodb/data:/data/db \
-v /storage/mongodb/conf:/etc/mongo \
mongo:3.6-xenial --config /etc/mongo/mongod.conf
