FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Brave Browser"

ARG USER=ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y curl gnupg && apt-get clean
RUN curl -fsSLo /usr/share/keyrings/brave-browser-archive-keyring.gpg https://brave-browser-apt-release.s3.brave.com/brave-browser-archive-keyring.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/brave-browser-archive-keyring.gpg] https://brave-browser-apt-release.s3.brave.com/ stable main" | tee /etc/apt/sources.list.d/brave-browser-release.list
RUN DEBIAN_FRONTEND=noninteractive \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y brave-browser fonts-dejavu-core fonts-freefont-ttf fonts-indic fonts-kacst-one \
	fonts-khmeros-core fonts-lao fonts-liberation fonts-liberation2 fonts-lklug-sinhala fonts-noto-cjk \
	fonts-noto-color-emoji fonts-opensymbol fonts-sil-abyssinica fonts-sil-padauk fonts-thai-tlwg \
	fonts-tibetan-machine fonts-ubuntu libcanberra-gtk3-module light-themes && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN useradd -U -G audio,video -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD brave-browser
