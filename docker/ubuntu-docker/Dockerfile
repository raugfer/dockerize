FROM ubuntu:24.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Ubuntu"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y sudo && \
	apt-get clean

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G sudo -d /home/${USER} -m ubuntu
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
