#!/bin/bash
docker stop grafana
docker rm grafana
docker run -d \
-v /storage/grafana/data:/var/lib/grafana \
--name=grafana \
--net=logger_net \
-p 3000:3000 \
grafana/grafana
