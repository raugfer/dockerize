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

LABEL Description "Android Studio"

ARG URL=https://dl.google.com/dl/android/studio/ide-zips/2024.1.2.13/android-studio-2024.1.2.13-linux.tar.gz
ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y wget && \
	apt-get clean

RUN \
	wget -q -O /tmp/android-studio-2024.1.2.13-linux.tar.gz ${URL} && \
	cd /opt/ && \
	tar xzf /tmp/android-studio-2024.1.2.13-linux.tar.gz && \
	rm -f /tmp/android-studio-2024.1.2.13-linux.tar.gz

RUN \
	apt-get update && \
	apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libfreetype6 \
		libsecret-1-0 qemu-kvm usbutils && \
	apt-get clean

# flutter dependencies
RUN \
	apt-get update && \
	apt-get install -y curl git unzip xz-utils libglu1-mesa lib32stdc++6 && \
	apt-get clean

ENV DISPLAY=:0

RUN addgroup kvm
RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -G plugdev -G kvm -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD /opt/android-studio/bin/studio.sh
