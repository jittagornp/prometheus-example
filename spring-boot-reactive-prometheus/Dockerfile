FROM openjdk:11-jre-slim
RUN mkdir /app
COPY ./target/*.jar /app/run.jar
EXPOSE 80
CMD ["java", "-Dserver.port=80", "-jar", "/app/run.jar"]
