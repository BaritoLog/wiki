# Timber

Timber is abstract model to logs data. 

![alt text](illustrations/8-log-adaptation.png)

![alt text](illustrations/9-barito-convert-logs-to-timber-in-behind.png)

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
