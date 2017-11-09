FROM openjdk:8-jdk-slim

RUN apt-get update && \
    apt-get -y upgrade && \
    apt-get -y  install openssh-client

COPY src/main/resources/secure/micros-keystore.jks /root/secure/micros-keystore.jks

COPY build/libs/config-server*.jar app.jar

VOLUME /tmp
VOLUME /target

RUN bash -c 'touch /app.jar'
EXPOSE 8888
ENTRYPOINT ["java","-Dspring.profiles.active=${PROFILES}", "-Djava.security.egd=file:/dev/./urandom","-jar","/app.jar"]