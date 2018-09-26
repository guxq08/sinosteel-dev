#!/bin/bash
docker-compose up -d

mvn clean package -DskipTests
mvn spring-boot:run 

