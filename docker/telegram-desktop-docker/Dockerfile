FROM ubuntu:20.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Telegram Desktop"

ARG URL=https://updates.tdesktop.com/tlinux/tsetup.3.2.2.tar.xz
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y libfontconfig1 libglib2.0-0 libx11-6 libx11-xcb1 libxcb1 wget xz-utils
RUN wget -q -O /opt/tsetup.3.2.2.tar.xz ${URL}
RUN cd /opt/ && tar xf tsetup.3.2.2.tar.xz && rm -f tsetup.3.2.2.tar.xz

ENV DISPLAY=:0

RUN useradd -U -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD /opt/Telegram/Telegram
