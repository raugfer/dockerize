FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Android Studio"

ARG URL=https://dl.google.com/dl/android/studio/ide-zips/3.4.2.0/android-studio-ide-183.5692245-linux.tar.gz
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN wget -q -O /tmp/android-studio-ide-183.5692245-linux.tar.gz ${URL}
RUN cd /opt/ && tar xzf /tmp/android-studio-ide-183.5692245-linux.tar.gz
RUN apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libfreetype6 libsecret-1-0 qemu-kvm usbutils

# flutter dependencies
RUN apt-get install -y curl git unzip xz-utils libglu1-mesa lib32stdc++6

ENV DISPLAY=:0

RUN useradd -U -G audio -G plugdev -G kvm -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD /opt/android-studio/bin/studio.sh
