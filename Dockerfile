FROM openjdk:11-jdk-slim
VOLUME /tmp
COPY build/libs/*.jar prathap.jar
EXPOSE 8080
ENTRYPOINT ["java","-Dspring.profiles.active=test","-jar","/prathap.jar"]