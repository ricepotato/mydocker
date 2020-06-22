#!/bin/bash
docker stop puppet
docker rm puppet
docker run -d \
--name puppet --hostname puppet \
-v /home/ricepotato/code:/etc/puppetlabs/code \
--net=puppet \
--restart=always \
-p 8140:8140 \
puppet/puppetserver