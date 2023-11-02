FROM openjdk:11-jdk-slim
COPY --from=build /libs/prathap-0.0.1-SNAPSHOT-plain.jar


EXPOSE 8080
ENTRYPOINT ["java","-jar","prathap.jar"]