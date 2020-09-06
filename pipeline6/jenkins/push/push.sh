#!/bin/bash

echo "********************"
echo "** Pushing image ***"
echo "********************"

IMAGE="maven-project"

echo "** Logging in ***"
docker login -u phathdt379 -p $PASS
echo "*** Tagging image ***"
docker tag $IMAGE:$BUILD_TAG phathdt379/$IMAGE:$BUILD_TAG
echo "*** Pushing image ***"
docker push phathdt379/$IMAGE:$BUILD_TAG
