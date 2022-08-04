#!/bin/sh
./gradlew clean
./gradlew bootJar

scp -P22 ./build/libs/server-management-MANAGEMENT.jar root@115.71.238.146:~/blog/jar/server-management-MANAGEMENT.jar

ssh root@115.71.238.146 < "./deploy/deploy-exec.sh"