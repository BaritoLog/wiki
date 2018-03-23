#!/bin/bash


FLUENT_PATH="./fluent"
FLUENT_CONFIG="$FLUENT_PATH/fluent.conf"
LOG_TAG="barito"
LOG_PATH="$HOME/baritolog"
LOG_POS_FILE="$HOME/baritolog.pos"
PRODUCE_URL="http://localhost:8080/str/1/st/2/fw/3/cl/4/produce/some-topic"
SECRET="secret"


if gem list -i fluentd; then
  echo "flunetd already install"
else
  gem install fluentd --no-ri --no-rdoc
fi

if gem list -i fluent-plugin-barito; then
  echo "flunetd-plugin-barito already install"
else
  gem install fluent-plugin-barito
fi

fluentd --setup $FLUENT_PATH

/bin/cat <<EOM >$FLUENT_CONFIG
<source>
  @type tail
  tag "$LOG_TAG"
  path $LOG_PATH
  pos_file  $LOG_POS_FILE

  <parse>
    @type none
  </parse>
</source>

<match barito>
  @type barito

  use_https false
  use_kubernetes false
  application_secret "$SECRET"
  produce_url "$PRODUCE_URL"
  <buffer>
    flush_mode immediate
  </buffer>
</match>
EOM

nohup fluentd -c ./fluent/fluent.conf -vv &
