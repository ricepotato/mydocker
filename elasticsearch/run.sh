#!/bin/bash

docker run -d \
--name es \
-p 9200:9200 \
-v /path/to/data:/usr/share/elasticsearch/data \
-e "discovery.type=single-node" \
elasticsearch:6.4.1
