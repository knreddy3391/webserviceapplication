# base image
FROM openjdk:8u191-jre-alpine
WORKDIR /app
COPY target/hello-world-rest-api.jar webapp.jar
EXPOSE 8080
ENTRYPOINT [ "java","-jar","webapp.jar" ]