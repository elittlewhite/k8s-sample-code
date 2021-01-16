FROM openjdk:8-jre-alpine

WORKDIR /opt
EXPOSE 8080
COPY target/*.jar /opt/app.jar

ENTRYPOINT ["java","-jar","app.jar"]