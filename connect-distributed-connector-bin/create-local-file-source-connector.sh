#!/bin/bash

curl -X POST -H "Content-Type:application/json" localhost:8083/connectors --data '{"name":"local-file-source-connector","config":{"connector.class":"FileStreamSource","tasks.max":"1","file":"/var/log/messages","topic":"messages_log_raw"}}'
