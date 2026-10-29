FROM ubuntu:26.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "MPlayer"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get install -y mplayer=2:1.5+svn38681-1 ffmpeg=7:8.0.1-3ubuntu2 sudo && \
	apt-get clean

ENV DISPLAY=:0
ENV TZ=

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G audio -d /home/${USER} -m ubuntu
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
