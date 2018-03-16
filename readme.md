# Barito Log

## Introduction

The Barito Log project is aimed at making logs management simpler by developing interface for provisioning, managing, and monitoring elastic stacks.

![Barito in Big Picture](3-barito-in-big-picture.png)

Terms that used in this project:
- `Client` = collect the log in a service and sent it to a receiver
- `Receiver` = receive log from client and produce it to a kafka cluster
- `Forwarder` = consume kafka and forward it to a elastic stack
- `Market` = the portal and server 
- `Store` = a last place where log stored (Elasticsearch)
- `Flow` = both receiver and forwarder
- `Stream` = kafka with its receiver

Please check our [illustration](illustration/readme.md) and [original requirement](original_requirement)

## Philosophy

![Timber Rafting in Barito River](0-timber-rafting-in-barito-river.jpg)
