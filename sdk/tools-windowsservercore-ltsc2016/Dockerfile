FROM cirrusci/windowsservercore:2016

ENV ANDROID_HOME C:\\Android
ENV ANDROID_SDK_TOOLS_VERSION 4333796
ENV JAVA_HOME C:\\Program Files\\Java\\jdk1.8.0_201
ENV JAVA_VERSION 8.0.201

RUN powershell.exe -Command \
    choco install -y jdk8 --version $env:JAVA_VERSION; \
    Remove-Item C:\ProgramData\chocolatey\logs -Force -Recurse


RUN powershell.exe -Command \
    mkdir $env:ANDROID_HOME; \
    [Net.ServicePointManager]::SecurityProtocol = [Net.SecurityProtocolType]::Tls12; \
    (New-Object System.Net.WebClient).DownloadFile(('https://dl.google.com/android/repository/sdk-tools-windows-{0}.zip' -f $env:ANDROID_SDK_TOOLS_VERSION), 'android_sdk_tools.zip') ; \
    Expand-Archive android_sdk_tools.zip -DestinationPath C:\Android\ ; \
    Remove-Item -Path android_sdk_tools.zip ; \
    [Environment]::SetEnvironmentVariable('Path', $env:Path+';' + $env:ANDROID_HOME+'\tools;' + $env:ANDROID_HOME+'\tools\bin;' + $env:ANDROID_HOME+'\platform-tools', [EnvironmentVariableTarget]::Machine)

RUN echo y | sdkmanager.bat --licenses

RUN powershell.exe -Command \
    sdkmanager.bat tools ; \
    sdkmanager.bat platform-tools ; \
    sdkmanager.bat emulator ;
