#!/bin/bash
#Instruction - ./start.sh <docker tag>

echo ">>> Create new xray events"
curl -uadmin:password -H "Content-Type:application/json" -X POST http://104.154.238.5:8000/api/v1/events -T xray.json
curl -uadmin:password -H "Content-Type:application/json" -X POST http://104.154.238.5:8000/api/v1/events -T xray.json

echo ">>> Deploying docker image to trigger xray alert and email"
curl -stanleyf:AKCp2UPLgsEE4gEfqrwyrG6Bs6N2bvX4autoYcQyXXEpSnwkuYQ9epZdy4aqtdoA7LxMqh2xP -O https://gcartifactory-us.jfrog.info/artifactory/jcenter-cache/commons-io/commons-io/2.4/commons-io-2.4.jar
curl -stanleyf:AKCp2UPLgsEE4gEfqrwyrG6Bs6N2bvX4autoYcQyXXEpSnwkuYQ9epZdy4aqtdoA7LxMqh2xP -O https://gcartifactory-us.jfrog.info/artifactory/jcenter-cache/uk/org/retep/xmpp/xmpp/commons/9.11/commons-9.11.jar
docker login -u stanleyf -p AKCp2UPLgsEE4gEfqrwyrG6Bs6N2bvX4autoYcQyXXEpSnwkuYQ9epZdy4aqtdoA7LxMqh2xP https://gcartifactory-us.jfrog.info:5000/
docker build -t gcartifactory-us.jfrog.info:5000/xray/demo:$1 .
docker push gcartifactory-us.jfrog.info:5000/xray/demo:$1
echo ">>> xray/demo docker image deployed to  https://gcartifactory-us.jfrog.info/artifactory/webapp/#/artifacts/browse/tree/General/docker-local2/xray/demo/$1"
  

