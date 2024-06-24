FROM ubuntu:24.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "MPlayer"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y mplayer=2:1.5+svn38446-1build5 sudo && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -d /home/${USER} -m ubuntu
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
