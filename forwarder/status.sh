

PID=$(ps ax | grep barito-flow | grep forwarder | grep -v grep | awk '{print $1}')


if [ -z "$PID" ]; then
  echo "No Barito Forwarder"
  exit 1
else
  echo "start with PID: $PID"
fi
