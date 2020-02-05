#!/bin/bash

docker run -d \
--name stroage \
--restart=always \
-v /my/custom/mongod.conf:/etc/mongo/mongod.conf \
-v /my/own/datadir:/data/db \
mongodb:3.6-xenial