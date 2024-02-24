FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Flutter"

ARG URL=https://storage.googleapis.com/flutter_infra_release/releases/stable/linux/flutter_linux_3.19.1-stable.tar.xz
ARG API=34
ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y curl file git libglu1-mesa openjdk-17-jre sudo unzip usbutils xz-utils zip && \
	apt-get clean

RUN \
	curl -o /tmp/commandlinetools.zip https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip && \
	cd /opt/ && unzip /tmp/commandlinetools.zip && \
	rm -rf /tmp/commandlinetools.zip

RUN useradd -U -G sudo -G plugdev -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/

RUN yes | /opt/cmdline-tools/bin/sdkmanager --sdk_root=/home/${USER}/android-sdk/ 'build-tools;'${API}'.0.0' 'cmdline-tools;latest' 'platforms;android-'${API} 'platform-tools' 'sources;android-'${API} 'system-images;android-'${API}';google_apis;x86_64'

RUN \
	curl -o /tmp/flutter.tar.xz ${URL} && \
	tar xvf /tmp/flutter.tar.xz --no-same-owner && \
	rm -rf /tmp/flutter.tar.xz

RUN \
	flutter/bin/flutter --disable-analytics && \
	flutter/bin/flutter config --no-analytics --no-enable-web --no-enable-linux-desktop --no-enable-macos-desktop --no-enable-windows-desktop --android-sdk=/home/${USER}/android-sdk/ && \
	flutter/bin/flutter precache && \
	(yes | flutter/bin/flutter doctor --android-licenses)

RUN echo 'export PATH="$PATH:$HOME/flutter/bin"' >> .bashrc
RUN echo 'sudo chmod 666 /dev/bus/usb/*/*' >> .bashrc
