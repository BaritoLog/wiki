# Getting Started (For Development)



## Prerequisite

Barito Project need [go](https://golang.org/) and [rbenv](https://github.com/rbenv/rbenv) installment. To help install on mac machine, please install [homebrew](https://brew.sh/). 

```rb
# skip this if you already have homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

# skip this if you already have rbenv
brew install rbenv
echo 'eval "$(rbenv init -)"' >> ~/.bash_profile 
source ~/.bash_profile 


# skip this if you already have go
brew install go
echo 'export GOPATH=$HOME/go' >> ~/.bash_profile 
source ~/.bash_profile 
```


## 1. Kafka Cluster

With Vagrant
```sh
# skip this if you already have BaritoLog folder
git clone git@github.com:BaritoLog/wiki.git

cd wiki # or your project folder
cd kafka-cluster
vagrant up
```

Manual: https://kafka.apache.org/quickstart

## 2. Elasticsearch

With Vagrant
```sh
# skip this if you already have BaritoLog folder
git clone git@github.com:BaritoLog/wiki.git

cd wiki # or your project folder
cd elasticsearch
vagrant up
```

With Homebrew
```sh
brew install elasticsearch
```

## 3. Receiver

```sh
go get github.com/BaritoLog/barito-flow
$GOPATH/bin/barito-flow receiver
```

## 4. Forwarder

```sh
go get github.com/BaritoLog/barito-flow
$GOPATH/bin/barito-flow forwarder
```

## 5. Client

```sh
gem install 

```
