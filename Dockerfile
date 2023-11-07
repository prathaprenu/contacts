#FROM gradle:7.1.0-jdk11 AS build
#COPY . .
#RUN ./gradlew clean build -x test
#
#FROM openjdk:11-jdk-slim-sid
#COPY build/libs/*.jar prathap.jar
#EXPOSE 8080
#ENTRYPOINT ["java","-jar","prathap.jar"]

FROM gradle:7.1.0-jdk11 AS build
COPY . .
RUN ./gradlew bootJar --no-daemon

FROM openjdk:11-jdk-slim
EXPOSE 8080
COPY build/libs/*.jar prathap.jar
ENTRYPOINT ["java","-jar","prathap.jar"]