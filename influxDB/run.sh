#!/bin/bash

docker stop influxdb
docker rm influxdb
docker run -d \
--name influxdb \
-p 8089:8089/udp \
-p 8086:8086 \
-p 8083:8083 \
-p 2003:2003  \
--net=logger_net \
-e INFLUXDB_GRAPHITE_ENABLED=true \
-v /storage/influxdb/data:/var/lib/influxdb \
-v /storage/influxdb/conf/influxdb.conf:/etc/influxdb/influxdb.conf:ro \
influxdb -config /etc/influxdb/influxdb.conf
