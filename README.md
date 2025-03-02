# Docker images with Android SDK

[![Build status][build_badge]][build_link]

You can either [use it in CI](https://cirrus-ci.org/examples/#android) or run
locally via Docker:

```console
docker run --rm -it \
  --volume "$PWD:/build" \
  --workdir /build \
  ghcr.io/cirruslabs/android-sdk:35 \
  ./gradlew :app:assembleDebug
```

The example above mounts current working directory and runs a Gradle build.

## GitHub Container Registry

https://github.com/cirruslabs/docker-images-android/pkgs/container/android-sdk

[build_badge]: https://api.cirrus-ci.com/github/cirruslabs/docker-images-android.svg
[build_link]: https://cirrus-ci.com/github/cirruslabs/docker-images-android
