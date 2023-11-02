FROM ubuntu:22.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Darling"

ARG USER=ubuntu

RUN apt-get update && apt-get upgrade -y
RUN apt-get update && apt-get install -y automake bison clang-15 cmake curl \
	flex gcc-multilib git git-lfs libavcodec-dev libavformat-dev \
	libavutil-dev libbsd-dev libc6-dev-i386 libcairo2-dev libcap2-bin \
	libdbus-1-dev libegl1-mesa-dev libelf-dev libfontconfig1-dev \
	libfreetype6-dev libfuse-dev libgif-dev libgl1-mesa-dev \
	libglu1-mesa-dev libpulse-dev libssl-dev libstdc++-12-dev \
	libswresample-dev libtiff5-dev libudev-dev libxcursor-dev \
	libxkbfile-dev libxml2-dev libxrandr-dev pkg-config sudo
RUN git lfs install
RUN cd /tmp && git clone --recursive https://github.com/darlinghq/darling.git
RUN mkdir /tmp/darling/build
RUN cd /tmp/darling/build && cmake ..
RUN cd /tmp/darling/build && make install

RUN useradd -U -G sudo -m -s /bin/bash ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD ["bash", "-c", "DARLING_NOOVERLAYFS=1 darling shell"]
