#!/bin/bash
#Instruction - ./start.sh <docker tag>

echo ">>> Downloading dependencies from artifactory for docker build"
curl -u<user>:<password> -O https://xray-demo.jfrog.io/artifactory/jcenter/commons-io/commons-io/2.4/commons-io-2.4.jar
curl -u<user>:<password> -O https://xray-demo.jfrog.io/artifactory/jcenter/uk/org/retep/xmpp/xmpp/commons/9.11/commons-9.11.jar

echo ">>> Building docker image"
docker login -u <user> -p <password> xray-demo-docker-local.jfrog.io
docker build -t xray-demo-docker-local.jfrog.io/xray/demo:$1 .
docker push xray-demo-docker-local.jfrog.io/xray/demo:$1
echo ">>> xray/demo deployed to artifactory"  

