# Barito Log

> To get started quickly, please consult our quick development setup [here](https://github.com/BaritoLog/BaritoMarket)

![Timber Rafting in Barito River](_images/0-timber-rafting-in-barito-river.jpg)

The Barito Log project aimed at making logs management simpler by developing a platform for provisioning, managing, and monitoring logging infrastructures.

The project name is inspired from timber rafting, a log transportation method in which logs are tied together into rafts and drifted or pulled across a body of water or down a river. Barito is the name of a big river located in South Kalimantan, Indonesia.

Read the story behind Barito [here](https://blog.gojekengineering.com/how-we-built-barito-to-enhance-logging-19f80b89496f)

## Introduction
Logs infrastructure ain't scale
![image](_images/1-logs-infra-aint-scale.png)

Divide and conquer. With many logs cluster, how can a service know its logs cluster?
![image](_images/2-service-dont-know-its-cluster.png)

Router help service to discover the logs cluster. Router will communicate with Market to get application and logs cluster information.
![image](_images/3-router-help.png)

Market is a web portal where user can request or get the information. But to access the actual logs cluster, router is the guy. 
![image](_images/4-market-provision-the-cluster.png)


## Overview
![image](_images/6-barito-overview.png)
![image](_images/5-inside-the-cluster.png)

## Provisioning

Provisioning are done using our other open source project, called the [Pathfinder](https://github.com/pathfinder-cm)

## Service Discovery

![image](_images/7-producer-router.png)
![image](_images/8-kibana-router.png)

## Log Forwarding

![image](_images/9-logs-journey.png)

Consumer service will subscribe to `new_topic_events` to spawn new logs worker.
![image](_images/10-logs-and-events.png)
