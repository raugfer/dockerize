FROM ubuntu:24.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Ubuntu"

ARG USER=ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
