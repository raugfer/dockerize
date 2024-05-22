FROM ubuntu:24.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "GnuCash"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y dbus-x11 fonts-dejavu-core fonts-dejavu-mono \
	fonts-droid-fallback fonts-liberation fonts-liberation-sans-narrow \
	fonts-noto-cjk fonts-noto-color-emoji fonts-noto-core fonts-noto-mono \
	fonts-ubuntu fonts-urw-base35 gnucash libcanberra-gtk3-module \
	yaru-theme-gtk yaru-theme-icon yaru-theme-sound && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G sudo -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD gnucash
