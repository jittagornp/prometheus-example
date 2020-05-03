#!/bin/bash
rm -rf target

#build source code (.jar file)
docker run --rm -v $(pwd):/app -v /root/.m2:/root/.m2 maven:3.6.2-jdk-11 mvn install -f /app/pom.xml

# remove container and images
docker stop spring-boot-reactive-prometheus || true
docker rm spring-boot-reactive-prometheus || true
docker rmi spring-boot-reactive-prometheus || true

# build docker image
docker build -t spring-boot-reactive-prometheus .

# run container
docker run -d --name=spring-boot-reactive-prometheus -p 8080:80 --restart=always spring-boot-reactive-prometheus