#!/usr/bin/env bash

export BARITO_FORWARDER_KAFKA_CONSUMER_GROUP_ID="forwarder-consumber-group"
export BARITO_FORWARDER_KAFKA_CONSUMER_TOPIC="forwarder-topic"

echo $BARITO_FORWARDER_KAFKA_CONSUMER_GROUP_ID
echo $BARITO_FORWARDER_KAFKA_CONSUMER_TOPIC

go get github.com/BaritoLog/barito-flow
# nohup $GOPATH/bin/barito-flow forwarder > /dev/null 2>&1 &
$GOPATH/bin/barito-flow forwarder
