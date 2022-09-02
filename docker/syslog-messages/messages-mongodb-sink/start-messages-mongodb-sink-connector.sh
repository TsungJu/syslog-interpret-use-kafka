#!/bin/bash

docker build -t messages-mongodb-sink-env .
docker run -d --name messages-mongodb-sink-connector --network bitnami_default messages-mongodb-sink-env
