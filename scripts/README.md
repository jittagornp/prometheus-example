# Hello World 

# Prometheus Server

```sh
$ docker run -d --name=prometheus-server -v $(pwd)/hello-world/prometheus.yml:/etc/prometheus/prometheus.yml -p 9090:9090 prom/prometheus:latest 
```

# Target Nodes 

```sh
$ docker run -d --name=node-exporter -p 9100:9100 prom/node-exporter:latest 
```
