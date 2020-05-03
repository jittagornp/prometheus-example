# Spring-boot Reactive Prometheus

TODO

# Simple PromQL

### Server UP
```
sum(up{job="spring-boot-reactive-prometheus"})
```

### API / Count
```
sum(http_server_requests_seconds_count{job="spring-boot-reactive-prometheus", uri="/"}) by (instance)
```

### Write Log Count
```
sum(logback_events_total{job="spring-boot-reactive-prometheus"}) by (instance)
```

### CPU Usage
```
100 - (avg by (instance) (irate(node_cpu_seconds_total{job="node-exporter",mode="idle"}[5m])) * 100)
```

### Memory Usage 
```
100 * (1 - ((avg_over_time(node_memory_MemFree_bytes[10m]) + avg_over_time(node_memory_Cached_bytes[10m]) + avg_over_time(node_memory_Buffers_bytes[10m])) / avg_over_time(node_memory_MemTotal_bytes[10m])))
```
