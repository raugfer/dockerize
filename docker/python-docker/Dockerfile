FROM python:3.10.4

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Python"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
