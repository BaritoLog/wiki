#!/usr/bin/env bash

cd kafka-cluster
vagrant up
cd .. 

cd elasticsearch
vagrant up
cd ..

sh receiver/bootstrap.sh
sh receiver/status.sh

sh forwarder/bootstrap.sh
sh forwarder/status.sh
