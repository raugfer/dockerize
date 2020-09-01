FROM ubuntu:20.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Zoom"

ARG URL=https://zoom.us/client/latest/zoom_amd64.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/zoom_amd64.deb ${URL}
RUN DEBIAN_FRONTEND=noninteractive gdebi --n /tmp/zoom_amd64.deb

ENV DISPLAY=:0
ENV TZ=

RUN useradd -U -G audio,video -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD zoom
