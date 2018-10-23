#!/bin/bash

DOCKER_IMAGE="thecreazy/siteaudit"
SITEAUDIT_URL="https://caffeina.com"
SITEAUDIT_USINGENV="true"
SITEAUDIT_USINGENV="true"

mkdir -p .testoutput

docker build -t $DOCKER_IMAGE . && 

docker run -t \
-v "$(pwd)/.testoutput":"/app/output" \
thecreazy/siteaudit \
$SITEAUDIT_URL \
--headless