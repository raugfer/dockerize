FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "GnuCash"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y dbus-x11 fonts-ubuntu gnucash libcanberra-gtk3-module yaru-theme-gtk yaru-theme-icon yaru-theme-sound

ENV DISPLAY=:0
ENV TZ=

RUN useradd -U -G audio -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
RUN gsettings set org.gnome.desktop.wm.preferences theme "Adwaita"
CMD gnucash
