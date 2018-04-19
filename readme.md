# Barito Log

The Barito Log project is aimed at making logs management simpler by developing interface for provisioning, managing, and monitoring elastic stacks. 

## What's in a name?

![Timber Rafting in Barito River](images/0-timber-rafting-in-barito-river.jpg)

The project name is inspired by timber rafting, which is a log transportation method in which logs are tied together into rafts and drifted or pulled across a water body or down a river. Barito is name of big river located in South Kalimantan, Indonesia. 

## Why?

![1-logging-in-microservices](images/1-logging-in-microservices.svg)
![2-spreaded-logs](images/2-spreaded-logs.svg)

# Overview

![3-barito-schema](images/3-barito-schema.svg)
![4-barito-componets](images/4-barito-componets.svg)

## Forwarding Strategy

![5-logs-are-flowing-through-receiver-and-forwarder](images/5-logs-are-flowing-through-receiver-and-forwarder.svg)
![6-kafka-is-preventing-data-loss](images/6-kafka-is-preventing-data-loss.svg)
![7-logs-data-may-needed-by-other-services](images/7-logs-data-may-needed-by-other-services.svg)

## Web Portal

![8-people-are-gathering-in-the-market](images/8-people-are-gathering-in-the-market.svg)

## Service Discovery

![9-multiple-kafka-multiple-elasticsearch](images/9-multiple-kafka-multiple-elasticsearch.svg)
![10-components-are-discovering each-others](images/10-components-are-discovering each-others.svg)

Strategy: Consul/Yggrasill (On Progress/On Discussion)

## Timber

![11-logs-is-adapt](images/11-logs-is-adapt.svg)
![12-barito-convert-logs-to-timber-in-behind](images/12-barito-convert-logs-to-timber-in-behind.svg)

Timber is abstract model to logs data. 

Anatomy of Timber: 
1. `location`
2. `tag`
3. `@message` Log message
4. `@timestamp` Time when log created
4. `client_trail`
5. `receiver_trail`
6. `forwarder_trail`

Timber in json
```json
{
  "location": "some-topic",
  "tag": "barito",
  "@message": "qwerijsdfvx",
  "@timestamp": "2018-04-03T07:41:17Z",
  "client_trail": {
    "is_k8s": false,
    "sent_at": "2018-04-03T07:41:17Z",
    "hints": []
  },
  "receiver_trail": {
    "url_path": "/str/1/st/2/fw/3/cl/4/produce/some-topic",
    "received_at": "2018-04-03T07:41:17Z",
    "hints": []
  },
  "forwarder_trail": {
    "forwarded_at": "",
    "hints": []
  }
}
```

If `@message` is empty, client/receiver/forwarder will try to recovery it and give a hint. 

If `@timestamp` is empty, client/receiver/forwarder will try to recovery it and give a hint. 

All field related time (`@timestamp`, `sent_at`, `received_at`, `forwarded_at`) will save as `string`, `UTC` and `RFC3339` as the format. 



## Provisioning 

![13-a-lot-have-to-set-up](images/13-a-lot-have-to-set-up.svg)


Strategy: Terraform with chef(On Progress/On Discussion)


## Stream Processing

![14-stream-processor](images/14-stream-processor.svg)

## Projects 

- BaritoMarket: https://github.com/BaritoLog/BaritoMarket
- barito-flow: https://github.com/BaritoLog/barito-flow
- Barito-Fluent-Plugin: https://github.com/BaritoLog/Barito-Fluent-Plugin

## Tech Stacks

- Ruby On Rail 
- Go

## Getting Started

- [Getting started for development](getting-started-dev.md)
