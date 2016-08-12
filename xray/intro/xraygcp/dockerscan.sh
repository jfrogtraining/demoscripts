#!/bin/bash
#Instruction - ./start.sh <docker tag>

echo ">>> Downloading dependencies from artifactory for docker build"
curl -H "X-JFrog-Art-Api:<api key>" -O https://gcartifactory-us.jfrog.info/artifactory/jcenter/commons-io/commons-io/2.4/commons-io-2.4.jar
curl -H "X-JFrog-Art-Api:<api key>" -O https://gcartifactory-us.jfrog.info/artifactory/jcenter/uk/org/retep/xmpp/xmpp/commons/9.11/commons-9.11.jar

echo ">>> Building docker image"
docker login -u <user> -p <password> gcartifactory-us.jfrog.info:5002
docker build -t gcartifactory-us.jfrog.info:5002/xray/demo:$1 .
docker push gcartifactory-us.jfrog.info:5002/xray/demo:$1
echo ">>> xray/demo deployed to artifactory"  

