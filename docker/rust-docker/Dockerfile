FROM rust:1.88

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Rust"

ARG USER=ubuntu

RUN apt-get update && apt-get upgrade -y && apt-get install -y sudo && apt-get clean
RUN rustup target add wasm32-wasip2

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
ENV MORE='-e'
WORKDIR /home/${USER}/
RUN curl https://wasmtime.dev/install.sh -sSf | bash
