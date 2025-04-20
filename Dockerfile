FROM eclipse-temurin:21-jdk-alpine

RUN apk update && apk upgrade --no-cache
RUN apt-get update && apt-get install -y curl

ARG JAR_FILE=build/libs/*.jar
COPY ${JAR_FILE} app.jar

ENTRYPOINT ["java", "-jar", "/app.jar"]
