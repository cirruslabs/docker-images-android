FROM openjdk:8-jdk-windowsservercore-ltsc2016

ENV ANDROID_HOME C:\\Android
# comes from https://developer.android.com/studio/
ENV ANDROID_SDK_TOOLS_VERSION 4333796

RUN mkdir $env:ANDROID_HOME; \
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
    (New-Object System.Net.WebClient).DownloadFile(('https://dl.google.com/android/repository/sdk-tools-windows-{0}.zip' -f $env:ANDROID_SDK_TOOLS_VERSION), 'android_sdk_tools.zip') ; \
    Expand-Archive android_sdk_tools.zip -DestinationPath C:\Android\ ; \
    Remove-Item -Path android_sdk_tools.zip

RUN setx PATH "%PATH%;C:\\Android\\tools;C:\\Android\\tools\\bin;C:\\Android\\platform-tools"

RUN echo y | sdkmanager.bat --licenses

RUN sdkmanager.bat tools ; \
    sdkmanager.bat platform-tools ; \
    sdkmanager.bat emulator ;
