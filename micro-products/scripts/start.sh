#!/usr/bin/env bash

JAVA_OPTS="-Dspring.profiles.active=${PROFILES}"
EXEC="java $JAVA_OPTS -Djava.security.egd=file:/dev/./urandom -jar app.jar"

/tmp/wait-for-it.sh ${CONFIG_SERVER_URL} -t 0 && $EXEC