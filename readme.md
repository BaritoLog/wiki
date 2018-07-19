# Barito Log

![Timber Rafting in Barito River](_images/0-timber-rafting-in-barito-river.jpg)

The Barito Log project is aimed at making logs management simpler by developing interface for provisioning, managing, and monitoring elastic stacks. 

The project name is inspired by timber rafting, which is a log transportation method in which logs are tied together into rafts and drifted or pulled across a water body or down a river. Barito is name of big river located in South Kalimantan, Indonesia. 

## Introduction
Logs infrastructure ain't scale
![image](_images/1-logs-infra-aint-scale.png)

Divide and conquer. With many logs cluster, how service know its logs cluster?
![image](_images/2-service-dont-know-its-cluster.png)

Router help service to discover the logs cluster. Router will communicate with Market to get application and logs cluster information.
![image](_images/3-router-help.png)

Market is user interface web portal where user can request or get the information. But to access the actual logs cluster, router is the guy. 
![image](_images/4-market-provision-the-cluster.png)


## Overview
![image](_images/6-barito-overview.png)
![image](_images/5-inside-the-cluster.png)

## Provisioning

N/A

## Service Discovery

![image](_images/7-producer-router.png)
![image](_images/8-kibana-router.png)

## Log Forwarding

![image](_images/9-logs-journey.png)

Consumer service will subscribe to `new_topic_events` to spawn new logs worker.
![image](_images/10-logs-and-events.png)
