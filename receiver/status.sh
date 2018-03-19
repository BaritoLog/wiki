

PID=$(ps ax | grep barito-flow | grep receiver | grep -v grep | awk '{print $1}')


if [ -z "$PID" ]; then
  echo "No Barito Receiver"
  exit 1
else
  echo "Start with PID: $PID"
fi
