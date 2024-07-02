FROM ubuntu:24.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Coq"

ARG USER=ubuntu

RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y coq=8.18.0+dfsg-1build2 make nano sudo && \
	apt-get clean

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -a -G sudo -d /home/${USER} -m ubuntu
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
RUN touch ~/.sudo_as_admin_successful
WORKDIR /home/${USER}/
