FROM node:18.20.0

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Node"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo nano

RUN groupmod -n ${USER} node
RUN usermod -l ${USER} -a -G sudo -d /home/${USER} -m node
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
ENV MORE='-e'
WORKDIR /home/${USER}/
