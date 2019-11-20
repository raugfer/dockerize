FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Keybase"

ARG URL=https://prerelease.keybase.io/keybase_amd64.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/keybase_amd64.deb ${URL}
RUN gdebi --n /tmp/keybase_amd64.deb
RUN apt-get install -y libcanberra-gtk3-module libx11-xcb1
RUN sed -i 's/\(".KEYBASE".*\)&$/\1/g' /usr/bin/run_keybase

ENV DISPLAY=:0

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN mkdir /home/${USER}/.config/
CMD run_keybase
