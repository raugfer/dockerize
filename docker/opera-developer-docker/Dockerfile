FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Opera Developer"

ARG URL=https://download5.operacdn.com/pub/opera-developer/98.0.4739.0/linux/opera-developer_98.0.4739.0_amd64.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/opera-developer_98.0.4739.0_amd64.deb ${URL}
RUN gdebi --n /tmp/opera-developer_98.0.4739.0_amd64.deb
RUN DEBIAN_FRONTEND=noninteractive apt-get install -y \
	fonts-dejavu-core fonts-freefont-ttf fonts-indic fonts-kacst-one \
	fonts-khmeros-core fonts-lao fonts-liberation fonts-liberation2 \
	fonts-lklug-sinhala fonts-noto-cjk fonts-noto-color-emoji \
	fonts-opensymbol fonts-sil-abyssinica fonts-sil-padauk fonts-thai-tlwg \
	fonts-tibetan-machine fonts-ubuntu libgl1-mesa-glx \
	libcanberra-gtk3-module light-themes yaru-theme-gtk yaru-theme-icon \
	yaru-theme-sound

ENV DISPLAY=:0
ENV TZ=
ENV UA=

RUN useradd -U -G audio,video -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN gsettings set org.gnome.desktop.interface gtk-theme "Yaru-dark"
RUN gsettings set org.gnome.desktop.wm.preferences theme "Adwaita"
CMD opera-developer ${UA:+--user-agent="${UA}"}
