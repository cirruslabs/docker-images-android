FROM openjdk:8-jdk

ENV ANDROID_HOME /opt/android-sdk-linux
# comes from https://developer.android.com/studio/
ENV ANDROID_SDK_TOOLS_VERSION 4333796

RUN cd /opt \
    && wget -q https://dl.google.com/android/repository/sdk-tools-linux-$ANDROID_SDK_TOOLS_VERSION.zip -O android-sdk-tools.zip \
    && unzip -q android-sdk-tools.zip -d ${ANDROID_HOME} \
    && rm android-sdk-tools.zip

RUN apt-get update \
    && apt-get install -y sudo software-properties-common build-essential ruby-full --no-install-recommends \
    && rm -rf /var/lib/apt/lists/*

RUN gem install fastlane -NV

RUN echo '%sudo ALL=(ALL) NOPASSWD:ALL' >> /etc/sudoers

ENV PATH ${PATH}:${ANDROID_HOME}/tools:${ANDROID_HOME}/tools/bin:${ANDROID_HOME}/platform-tools

RUN yes | sdkmanager --licenses

RUN sdkmanager tools
RUN sdkmanager platform-tools
RUN sdkmanager emulator

RUN echo "Adding cirrus user and group" \
        && useradd --system --uid 1000 --shell /bin/bash --create-home cirrus \
        && adduser cirrus sudo \
        && chown --recursive cirrus:cirrus /home/cirrus \
        && chown --recursive cirrus:cirrus ${ANDROID_HOME}

ENV HOME /home/cirrus

USER cirrus
WORKDIR /home/cirrus