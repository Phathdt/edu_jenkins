#!/bin/bash

echo maven-project > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp  /tmp/.auth slave:/tmp/.auth
scp ./pipeline6/jenkins/deploy/publish slave:/tmp/publish
scp ./pipeline6/docker-compose.yml slave:~/maven/docker-compose.yml
ssh slave "/tmp/publish"
