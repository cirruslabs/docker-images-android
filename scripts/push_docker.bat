@echo off

IF not "%CIRRUS_BRANCH%" == "master" GOTO NOTMASTER
:YESPATH

docker login --username "%DOCKER_USER_NAME%" --password "%DOCKER_PASSWORD%"

docker push cirrusci/android-sdk:tools-windowsservercore-ltsc2016
docker push cirrusci/android-sdk:28-windowsservercore-ltsc2016

GOTO END
:NOTMASTER

@ECHO Not a master build. Nothing to push!

GOTO END
:END