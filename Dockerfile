FROM openjdk:11-jdk-slim
COPY build/libs/*.jar prathap.jar
EXPOSE 8080
ENTRYPOINT ["java","-jar","/prathap.jar"]