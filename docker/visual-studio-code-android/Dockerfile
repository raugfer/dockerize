FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Visual Studio Code"

ARG URL=https://go.microsoft.com/fwlink/?LinkID=760868
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/code_1.32.2-1552488294_amd64.deb ${URL}
RUN gdebi --n /tmp/code_1.32.2-1552488294_amd64.deb
RUN apt-get install -y libcanberra-gtk3-module libx11-xcb1

ENV DISPLAY=:0

RUN useradd -U -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD code -w
