FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Android Studio"

ARG URL=https://dl.google.com/dl/android/studio/ide-zips/2022.3.1.20/android-studio-2022.3.1.20-linux.tar.gz
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN wget -q -O /tmp/android-studio-2022.3.1.20-linux.tar.gz ${URL}
RUN cd /opt/ && tar xzf /tmp/android-studio-2022.3.1.20-linux.tar.gz
RUN apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libfreetype6 libsecret-1-0 qemu-kvm usbutils

# flutter dependencies
RUN apt-get install -y curl git unzip xz-utils libglu1-mesa lib32stdc++6

ENV DISPLAY=:0

RUN addgroup kvm
RUN useradd -U -G audio -G plugdev -G kvm -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD /opt/android-studio/bin/studio.sh
