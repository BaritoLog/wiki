# Barito Log
Project aimed at making logs management simpler by developing a platform for provisioning, managing, and monitoring logging infrastructures.

# Introduction 
The project name is inspired from timber rafting, a log transportation method in which logs are tied together into rafts and drifted or pulled across a body of water or down a river. Barito is the name of a big river located in South Kalimantan, Indonesia.

Read the story behind Barito [here](https://blog.gojekengineering.com/how-we-built-barito-to-enhance-logging-19f80b89496f).

![Timber Rafting in Barito River](_images/0-timber-rafting-in-barito-river.jpg)

## Note
To get started quickly, please consult our quick development setup [here](https://github.com/BaritoLog/BaritoMarket)

# Architecture
## What's the problem?

- Logs infrastructure ain't scale
![image](_images/1-logs-infra-aint-scale.jpg)

- Divide and conquer. With many logs cluster, how can a service know its logs cluster?
![image](_images/2-service-dont-know-its-cluster.jpg)

## Solution

- Router help service to discover the logs cluster. Router will communicate with Market to get application and logs cluster information.
![image](_images/3-router-help.jpg)

- Market is a web portal where user can request or get the information. But to access the actual logs cluster, router is the guy. 
![image](_images/4-market-provision-the-cluster.jpg)

## Overview
![image](_images/6-barito-overview.jpg)

![image](_images/5-inside-the-cluster.jpg)

## Provisioning

Provisioning are done using our other open source project, called the [Pathfinder](https://github.com/pathfinder-cm)

## Service Discovery

- Flow of sending logs from micro-service to Log cluster
![image](_images/7-producer-router.jpg)

- Flow of viewing logs from Log cluster
![image](_images/8-kibana-router.jpg)

## Log Forwarding

- Log Flow Journey
![image](_images/9-logs-journey.jpg)

- Consumer service will subscribe to `new_topic_events` to spawn new logs worker.
![image](_images/10-logs-and-events.png)
