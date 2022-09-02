#!/bin/bash

# First execute below command build kafka connect image(include install connector plugin)
# $ docker build -t kafkaconnect:1.3.0 .

docker run --user "$(id -u):$(id -g)" -d -v /root/kafka_2.13-2.8.0/config:/opt/kafka/config -v /var/log/messages:/var/log/messages --add-host "mongomastertest:140.92.25.54" -p 8083:8083 kafkaconnect:1.3.0
