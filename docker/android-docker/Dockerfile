FROM ubuntu:24.04
RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y dbus-x11 fonts-dejavu-core fonts-dejavu-mono \
	fonts-droid-fallback fonts-liberation fonts-liberation-sans-narrow \
	fonts-noto-cjk fonts-noto-color-emoji fonts-noto-core fonts-noto-mono \
	fonts-ubuntu fonts-urw-base35 libcanberra-gtk3-module yaru-theme-gtk \
	yaru-theme-icon yaru-theme-sound && \
	apt-get clean

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Android"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y openjdk-21-jre unzip wget && \
	apt-get clean
RUN \
	wget -O /tmp/cmdline-tools.zip https://dl.google.com/android/repository/commandlinetools-linux-11076708_latest.zip && \
	unzip -d /tmp/ /tmp/cmdline-tools.zip && \
	mkdir -p /opt/sdk/ && \
	yes | /tmp/cmdline-tools/bin/sdkmanager --sdk_root=/opt/sdk/ --install "cmdline-tools;latest" && \
	rm -rf /tmp/cmdline-tools.zip /tmp/cmdline-tools/
RUN \
	yes | /opt/sdk/cmdline-tools/latest/bin/sdkmanager --install "system-images;android-33;google_apis_playstore;x86_64" "emulator" "platform-tools"

RUN \
	apt-get update && \
	apt-get install -y qemu-kvm && \
	apt-get clean

ENV DISPLAY=:0

RUN groupadd -g 993 kvm
RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G kvm -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
#/opt/sdk/cmdline-tools/latest/bin/avdmanager create avd -n default -k "system-images;android-33;google_apis_playstore;x86_64" --device "pixel_9"
CMD ["/opt/sdk/emulator/emulator", "-avd", "default"]
