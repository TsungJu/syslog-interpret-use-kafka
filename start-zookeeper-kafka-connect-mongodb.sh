#!/bin/bash

# Start zookeeper server in the backgroud
nohup ./bin/zookeeper-server-start.sh config/zookeeper.properties > /dev/null 2>&1 &

# Start kafka server in the backgroud
nohup ./bin/kafka-server-start.sh config/server.properties > /dev/null 2>&1 &

# Create topic
./bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic messages_log_raw

./bin/kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 1 --partitions 1 --topic messages_log_interpreted

# Start connect in the backgroud
nohup ./bin/connect-distributed.sh config/connect-distributed.properties > /dev/null 2>&1 &

# Start standalone monogdb
docker run --name mongo-kafka-test -d -p 27017:27017 mongo:3.6.1
