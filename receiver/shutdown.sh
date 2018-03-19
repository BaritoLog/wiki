#!/usr/bin/env bash

PID=$(ps ax | grep barito-flow | grep receiver | grep -v grep | awk '{print $1}')


if [ -z "$PID" ]; then
  echo "No barito receiver"
  exit 1
else
  kill -s TERM $PID
fi
