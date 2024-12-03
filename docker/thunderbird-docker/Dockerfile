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

LABEL Description "Thunderbird"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y software-properties-common && \
	add-apt-repository ppa:mozillateam/ppa && \
	apt-get update && \
	apt-get install -y thunderbird=1:128.5.0+build1-0ubuntu0.24.04.1~mt1 && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD thunderbird
