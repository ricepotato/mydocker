#!/bin/bash
docker run -it --rm --network app-tier -e KAFKA_CFG_ZOOKEEPER_CONNECT=zookeeper:2181 bitnami/kafka:3 \
kafka-topics.sh --bootstrap-server kafka:9092 --partitions 1 --replication-factor 1 --create --topic $1
