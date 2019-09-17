#!/bin/bash

docker run -d \
--name some_db \
--restart=always \
--net=qinet \
-p 3306:3306 \
-v /path/to/data:/var/lib/mysql \
-e MYSQL_DATABASE=some_db \
-e MYSQL_USER=user \
-e MYSQL_PASSWORD=password \
-e MYSQL_ROOT_PASSWORD=password \
--net=some_net \
mariadb:latest --character-set-server=utf8mb4 --collation-server=utf8mb4_unicode_ci
