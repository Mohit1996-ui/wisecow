#!/bin/bash

# URL of the application
APP_URL="http://localhost:4499"

# Send HTTP request
STATUS_CODE=$(curl -s -o /dev/null -w "%{http_code}" $APP_URL)

if [ $STATUS_CODE -eq 200 ]; then
  echo "APPLICATION STATUS: UP (HTTP $STATUS_CODE)"
else
  echo "APPLICATION STATUS: DOWN (HTTP $STATUS_CODE)"
fi
