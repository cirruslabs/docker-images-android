#!/usr/bin/env bash

set -e

if [ "$CIRRUS_BRANCH" != "master" ]
then
    exit 0
fi

docker login --username $DOCKER_USER_NAME --password $DOCKER_PASSWORD

docker push cirrusci/android-sdk:tools
docker push cirrusci/android-sdk:26
docker push cirrusci/android-sdk:27
docker push cirrusci/android-sdk:28
