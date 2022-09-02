#!/bin/bash

docker build -t messages-file-source-env .
docker run --user $(id -u):$(id -g) -d --name messages-file-source-connector --network bitnami_default -v /var/log/messages:/var/log/messages messages-file-source-env
