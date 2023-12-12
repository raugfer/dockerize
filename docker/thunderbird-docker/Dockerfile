FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Thunderbird"

ARG USER=ubuntu

RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y dbus-x11 fonts-dejavu-core fonts-freefont-ttf fonts-indic \
	fonts-kacst-one fonts-khmeros-core fonts-lao fonts-liberation fonts-liberation2 \
	fonts-lklug-sinhala fonts-noto-cjk fonts-noto-color-emoji fonts-opensymbol \
	fonts-sil-abyssinica fonts-sil-padauk fonts-thai-tlwg fonts-tibetan-machine \
	fonts-ubuntu libcanberra-gtk3-module libegl1 libgl1 libotr5 libpci3 thunderbird \
	yaru-theme-gtk yaru-theme-icon yaru-theme-sound && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
RUN gsettings set org.gnome.desktop.wm.preferences theme "Adwaita"
CMD thunderbird
