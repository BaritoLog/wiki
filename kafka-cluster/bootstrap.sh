#!/usr/bin/env bash

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo aptitude -y install oracle-java8-installer

wget https://archive.apache.org/dist/kafka/0.11.0.1/kafka_2.11-0.11.0.1.tgz
sudo mkdir /etc/kafka
sudo tar xvzf kafka_2.11-0.11.0.1.tgz -C /etc/kafka

cd /etc/kafka/kafka_2.11-0.11.0.1/
sudo bin/zookeeper-server-start.sh -daemon config/zookeeper.properties
sudo bin/kafka-server-start.sh -daemon config/server.properties
