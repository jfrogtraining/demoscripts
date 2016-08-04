#!/bin/bash

echo ">>> Create new xray maven events for impact analysis"
curl -uadmin:jfrog3945 -H "Content-Type:application/json" -X POST http://gcxray-us.jfrog.info:8000/api/v1/events -T xray.json
curl -uadmin:jfrog3945 -H "Content-Type:application/json" -X POST http://gcxray-us.jfrog.info:8000/api/v1/events -T xray2.json

