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

LABEL Description "Brave Browser"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y curl && \
	apt-get clean
RUN curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
RUN \
	apt-get update && \
	apt-get install -y brave-browser=1.68.128 && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD brave-browser
