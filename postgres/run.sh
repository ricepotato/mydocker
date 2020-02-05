#!/bin/bash
docker run -d \
--name cuckoo_pg \
--restart=always \
-p 5432:5432 \
-v /storage/cuckoo/postgres:/var/lib/postgresql/data \
-e POSTGRES_PASSWORD=cuckoo \
-e POSTGRES_USER=cuckoo \
-e POSTGRES_DB=cuckoo \
postgres:latest