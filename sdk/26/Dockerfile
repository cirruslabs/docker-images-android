FROM cirrusci/android-sdk:tools

ENV ANDROID_PLATFORM_VERSION 26
ENV ANDROID_BUILD_TOOLS_VERSION 26.0.2

RUN yes | sdkmanager \
    "platforms;android-$ANDROID_PLATFORM_VERSION" \
    "build-tools;$ANDROID_BUILD_TOOLS_VERSION"
