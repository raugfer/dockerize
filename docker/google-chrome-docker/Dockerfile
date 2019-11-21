FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Google Chrome"

ARG URL=https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/google-chrome-stable_current_amd64.deb ${URL}
RUN gdebi --n /tmp/google-chrome-stable_current_amd64.deb
RUN apt-get install -y libcanberra-gtk3-module fonts-ubuntu light-themes

ENV DISPLAY=:0

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD google-chrome
