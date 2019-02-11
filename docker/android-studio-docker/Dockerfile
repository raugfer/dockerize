FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Android Studio"

ARG URL=https://dl.google.com/dl/android/studio/ide-zips/3.2.1.0/android-studio-ide-181.5056338-linux.zip
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget unzip
RUN wget -q -O /tmp/android-studio-ide-181.5056338-linux.zip ${URL}
RUN cd /opt/ && unzip -q /tmp/android-studio-ide-181.5056338-linux.zip
RUN apt-get install -y libxext6 libxrender1 libxtst6 libxi6 libfreetype6 libsecret-1-0 qemu-kvm

# flutter dependencies
RUN apt-get install -y curl git xz-utils libglu1-mesa lib32stdc++6

ENV DISPLAY=:0

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
WORKDIR /home/${USER}/
CMD /opt/android-studio/bin/studio.sh
