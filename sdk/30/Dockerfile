FROM cirrusci/android-sdk:tools

ENV ANDROID_PLATFORM_VERSION 30
ENV ANDROID_BUILD_TOOLS_VERSION 30.0.0

RUN yes | sdkmanager \
    "platforms;android-$ANDROID_PLATFORM_VERSION" \
    "build-tools;$ANDROID_BUILD_TOOLS_VERSION"
