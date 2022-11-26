FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Opera Developer"

ARG URL=https://download3.operacdn.com/pub/opera-developer/94.0.4604.0/linux/opera-developer_94.0.4604.0_amd64.deb
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget gdebi-core
RUN wget -q -O /tmp/opera-developer_94.0.4604.0_amd64.deb ${URL}
RUN gdebi --n /tmp/opera-developer_94.0.4604.0_amd64.deb
RUN apt-get install -y libgl1-mesa-glx libcanberra-gtk3-module fonts-ubuntu light-themes

ENV DISPLAY=:0
ENV TZ=
ENV UA=

RUN useradd -U -G audio,video -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD opera-developer ${UA:+--user-agent="${UA}"}
