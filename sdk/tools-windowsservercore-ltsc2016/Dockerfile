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


RUN powershell.exe -Command \
    mkdir -p C:\Android\licenses; \
    Set-Content -Value "`n601085b94cd77f0b54ff86406957099ebe79c4d6" -Path "C:\Android\licenses\android-googletv-license"; \
    Set-Content -Value "`n24333f8a63b6825ea9c5514f83c2829b004d1fee" -Path C:\Android\licenses\android-sdk-license; \
    Set-Content -Value "`n84831b9409646a918e30573bab4c9c91346d8abd" -Path C:\Android\licenses\android-sdk-preview-license; \
    Set-Content -Value "`n33b6a2b64607f11b759f320ef9dff4ae5c47d97a" -Path C:\Android\licenses\google-gdk-license; \
    Set-Content -Value "`nd975f751698a77b662f1254ddbeed3901e976f5a" -Path C:\Android\licenses\intel-android-extra-license; \
    Set-Content -Value "`ne9acab5b5fbb560a72cfaecce8946896ff6aab9d" -Path C:\Android\licenses\mips-android-sysimage-license

RUN sdkmanager.bat tools platform-tools emulator
