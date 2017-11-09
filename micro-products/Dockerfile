FROM openjdk:8-jdk-slim

COPY build/libs/micro-products*.jar app.jar
COPY scripts/start.sh /usr/bin
COPY scripts/wait-for-it.sh /tmp

RUN chmod +x /usr/bin/start.sh && \
    chmod +x /tmp/wait-for-it.sh

EXPOSE 9997

ENTRYPOINT [ "/usr/bin/start.sh" ]