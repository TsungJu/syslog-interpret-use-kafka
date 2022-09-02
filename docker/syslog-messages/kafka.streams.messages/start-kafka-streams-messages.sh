#!/bin/bash

docker build -t kafka-streams-messages --network host .
docker run -d --name kafka-streams-messages --network bitnami_default kafka-streams-messages
