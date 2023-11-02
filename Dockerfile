FROM openjdk:11-jdk-slim
VOLUME /tmp
COPY build/libs/prathap-0.0.1-SNAPSHOT.jar prathap-0.0.1-SNAPSHOT-plain.jar

EXPOSE 8080
ENTRYPOINT ["java","-jar","prathap-0.0.1-SNAPSHOT.jar prathap-0.0.1-SNAPSHOT-plain.jar"]