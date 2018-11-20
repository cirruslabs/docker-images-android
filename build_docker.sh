#!/usr/bin/env bash

set -e

docker build --tag cirrusci/android-sdk:tools sdk/tools
docker build --tag cirrusci/android-sdk:26 sdk/26
docker build --tag cirrusci/android-sdk:27 sdk/27
docker build --tag cirrusci/android-sdk:28 sdk/28
