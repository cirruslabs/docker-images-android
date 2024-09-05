ARG jdk_version=17

FROM ghcr.io/cirruslabs/android-sdk:34-jdk${jdk_version}

# https://developer.android.com/ndk/downloads
ENV ANDROID_NDK_VERSION 26.2.11394342

RUN yes | sdkmanager "ndk;$ANDROID_NDK_VERSION"
