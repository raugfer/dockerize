FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Emscripten"

ARG USER=ubuntu
ARG VERSION=3.1.47

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y git make python3 sudo xz-utils

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN git clone https://github.com/emscripten-core/emsdk.git
RUN cd ./emsdk/ && ./emsdk install ${VERSION} && ./emsdk activate ${VERSION}
RUN echo 'source "$HOME/emsdk/emsdk_env.sh"' >> .bashrc
