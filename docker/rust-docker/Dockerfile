FROM rust:1.32

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Rust"

ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y

RUN useradd -U -m -s /bin/bash ${USER}
USER ${USER}
WORKDIR /home/${USER}/
