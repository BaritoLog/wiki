#!/usr/bin/env bash

DEST="/etc/kafka"
INSTALLER_URL="https://archive.apache.org/dist/kafka/0.11.0.1/kafka_2.11-0.11.0.1.tgz"
INSTALLER_FILE="kafka_2.11-0.11.0.1.tgz"
INSTALLER_NAME="kafka_2.11-0.11.0.1"
ZOOKEEPER_PROPERTIES="$DEST/config/zookeeper.properties"
SERVER_PROPERTIES="$DEST/config/server.properties"

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo aptitude -y install oracle-java8-installer

wget $INSTALLER_URL
sudo mkdir $DEST
sudo tar xvzf $INSTALLER_FILE -C $DEST

sudo rm -rf $DEST/$INSTALLER_NAME/config # remove default config to avoid misleading

sudo mkdir $DEST/config
/bin/cat <<EOM >$ZOOKEEPER_PROPERTIES
dataDir=/tmp/zookeeper
clientPort=2181
maxClientCnxns=0
EOM
/bin/cat <<EOM >$SERVER_PROPERTIES

# Server Basics
broker.id=0

# Socket Server Settings
advertised.host.name=0.0.0.0
num.network.threads=3
num.io.threads=8
socket.send.buffer.bytes=102400
socket.receive.buffer.bytes=102400
socket.request.max.bytes=104857600

# Log Basics
log.dirs=/tmp/kafka-logs
num.partitions=1
num.recovery.threads.per.data.dir=1

# Internal Topic Settings
offsets.topic.replication.factor=1
transaction.state.log.replication.factor=1
transaction.state.log.min.isr=1

# Log Retention Policy
log.retention.hours=168
log.segment.bytes=1073741824
log.retention.check.interval.ms=300000

# Zookeeper 
zookeeper.connect=localhost:2181
zookeeper.connection.timeout.ms=6000

# Group Coodinator Settings
group.initial.rebalance.delay.ms=0
EOM

sudo $DEST/$INSTALLER_NAME/bin/zookeeper-server-start.sh -daemon $ZOOKEEPER_PROPERTIES
sudo $DEST/$INSTALLER_NAME/bin/kafka-server-start.sh -daemon $SERVER_PROPERTIES
