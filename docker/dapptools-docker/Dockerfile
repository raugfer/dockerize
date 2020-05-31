FROM ubuntu:20.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Dapp Tools"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y sudo curl git xz-utils

COPY entrypoint.sh /entrypoint.sh

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
RUN touch ~/.sudo_as_admin_successful
RUN curl https://dapp.tools/install | sh
WORKDIR /home/${USER}/
ENTRYPOINT ["/entrypoint.sh"]
