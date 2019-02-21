FROM cirrusci/android-sdk:tools-windowsservercore-ltsc2016

ENV ANDROID_PLATFORM_VERSION 28
ENV ANDROID_BUILD_TOOLS_VERSION 28.0.3

RUN echo y | sdkmanager.bat \
    platforms;android-%ANDROID_PLATFORM_VERSION% \
    build-tools;%ANDROID_BUILD_TOOLS_VERSION% \
    extras;google;m2repository \
    extras;android;m2repository