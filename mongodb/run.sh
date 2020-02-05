#!/bin/bash

docker run -d \
--name stroage \
--restart=always \
-v /path/to/data:/data/db \
mongo:3.6-xenial --config /path/to/mongod.conf