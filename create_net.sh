#!/bin/bash

docker network rm some_net
docker network create --driver=bridge \
--subnet=172.26.0.0/16 \
--ip-range=172.26.0.0/24 \
--gateway=172.26.0.1 \
some_net
docker network inspect some_net
