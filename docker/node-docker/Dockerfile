FROM node:8.15.0

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Node"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN groupmod -n ${USER} node
RUN usermod -l ${USER} -d /home/${USER} -m node
USER ${USER}
WORKDIR /home/${USER}/
