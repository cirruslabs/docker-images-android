FROM cirrusci/android-sdk:tools

ENV ANDROID_PLATFORM_VERSION 28
ENV ANDROID_BUILD_TOOLS_VERSION 28.0.3

RUN yes | sdkmanager \
    "platforms;android-$ANDROID_PLATFORM_VERSION" \
    "build-tools;$ANDROID_BUILD_TOOLS_VERSION"
