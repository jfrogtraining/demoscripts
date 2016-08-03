#!/bin/bash

echo ">>> Create new xray maven events for impact analysis"
curl -uadmin:password -H "Content-Type:application/json" -X POST http://104.154.238.5:8000/api/v1/events -T xray.json
curl -uadmin:password -H "Content-Type:application/json" -X POST http://104.154.238.5:8000/api/v1/events -T xray2.json

