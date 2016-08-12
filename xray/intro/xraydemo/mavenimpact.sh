#!/bin/bash
#Instruction - ./start.sh <docker tag>

echo ">>> Create new xray maven events for impact analysis"
curl -u<user>:<password> -H "Content-Type:application/json" -X POST http://10.200.11.11:8000/api/v1/events -T xray.json
curl -u<user>:<password> -H "Content-Type:application/json" -X POST http://10.200.11.11:8000/api/v1/events -T xray2.json

