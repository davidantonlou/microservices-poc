#!/usr/bin/env bash

cd config-repository/docker-starter/dev
docker-compose down

cd .. && cd .. && cd ..

cd config-server
gradle clean build
docker build -t config-server:0.0.1-SNAPSHOT .

cd ..
cd micro-products
gradle clean build
docker build -t micro-products:0.0.1-SNAPSHOT .

cd ..
cd config-repository/docker-starter/dev
docker-compose up --build -d
docker-compose logs -f micro-products