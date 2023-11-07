FROM gradle:7.1.0-jdk11 AS build
COPY . .
RUN ./gradlew clean build -x test

FROM openjdk:11-jdk-slim-sid
COPY build/libs/*.jar prathap.jar
EXPOSE 8181
ENTRYPOINT ["java","-jar","prathap.jar"]