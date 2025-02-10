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

LABEL Description "Opera Developer"

ARG URL=https://download5.operacdn.com/pub/opera-developer/118.0.5439.0/linux/opera-developer_118.0.5439.0_amd64.deb
ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y gdebi-core wget && \
	apt-get clean
RUN \
	wget -q -O /tmp/opera-developer.deb ${URL} && \
	gdebi --n /tmp/opera-developer.deb && \
	rm -rf /tmp/opera-developer.deb

ENV DISPLAY=:0
ENV TZ=
ENV UA=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD opera-developer ${UA:+--user-agent="${UA}"}
