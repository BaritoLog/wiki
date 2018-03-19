#!/usr/bin/env bash

sudo add-apt-repository -y ppa:webupd8team/java
sudo apt-get update
echo debconf shared/accepted-oracle-license-v1-1 select true | sudo debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | sudo debconf-set-selections
sudo aptitude -y install oracle-java8-installer


### Download and Install ElasticSearch
### Check http://www.elasticsearch.org/download/ for latest version of ElasticSearch and replace wget link below
wget https://download.elasticsearch.org/elasticsearch/elasticsearch/elasticsearch-1.4.4.deb
sudo dpkg -i elasticsearch-1.4.4.deb

#enable on bootup
sudo update-rc.d elasticsearch defaults 95 10

# sudo rm /etc/elasticsearch/
# sudo /bin/cat <<EOM >/etc/elasticsearch
# dataDir=/tmp/zookeeper
# clientPort=2181
# maxClientCnxns=0
# EOM
 
### Start ElasticSearch 
sudo /etc/init.d/elasticsearch start
