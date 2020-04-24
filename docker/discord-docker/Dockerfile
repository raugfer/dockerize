FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Discord"

ARG URL=https://dl.discordapp.net/apps/linux/0.0.10/discord-0.0.10.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/discord-0.0.10.deb ${URL}
RUN gdebi --n /tmp/discord-0.0.10.deb
RUN apt-get install -y libcanberra-gtk3-module libx11-xcb1

ENV DISPLAY=:0

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD discord
