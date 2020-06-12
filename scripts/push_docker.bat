@echo off

IF not "%CIRRUS_BRANCH%" == "master" GOTO NOTMASTER
:YESPATH

docker login --username "%DOCKER_USER_NAME%" --password "%DOCKER_PASSWORD%"

docker push cirrusci/android-sdk:tools-windowsservercore-2019
docker push cirrusci/android-sdk:30-windowsservercore-2019

GOTO END
:NOTMASTER

@ECHO Not a master build. Nothing to push!

GOTO END
:END