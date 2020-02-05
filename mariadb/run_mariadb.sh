#!/bin/bash

docker run -d \
--name some_db \
--restart=always \
-p 3306:3306 \
-v /path/to/data:/var/lib/mysql \
-v /path/to/conf/my.conf:/var/lib/etc/my.conf \
-e MYSQL_DATABASE=some_db \
-e MYSQL_USER=user \
-e MYSQL_PASSWORD=password \
-e MYSQL_ROOT_PASSWORD=password \
--net=some_net \
mariadb:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
