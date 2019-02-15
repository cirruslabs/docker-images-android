if NOT "%CIRRUS_BRANCH%" == "master" exit 0

docker login --username %DOCKER_USER_NAME% --password %DOCKER_PASSWORD%

docker push cirrusci/android-sdk:tools-windowsservercore-ltsc2016
docker push cirrusci/android-sdk:28-windowsservercore-ltsc2016