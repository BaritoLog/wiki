#!/usr/bin/env bash

go get github.com/BaritoLog/barito-flow
nohup $GOPATH/bin/barito-flow receiver > /dev/null 2>&1 &
