FROM ubuntu:18.04

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Ledger Live"

ARG URL=https://github.com/LedgerHQ/ledger-live-desktop/releases/download/v1.6.0/ledger-live-desktop-1.6.0-linux-x86_64.AppImage
ARG USER=ubuntu

RUN apt-get update
RUN apt-get upgrade -y
RUN apt-get install -y wget
RUN wget -q -O /opt/ledger-live-desktop-1.6.0-linux-x86_64.AppImage ${URL}
RUN chmod +x /opt/ledger-live-desktop-1.6.0-linux-x86_64.AppImage
RUN apt-get install -y libfuse2 libgtk2.0-0 libx11-xcb1 libnss3 libasound2 libdbus-glib-1-2 fuseext2 libcanberra-gtk3-module

ENV DISPLAY=:0

RUN useradd -U -G plugdev -m -s /bin/bash ${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
CMD /opt/ledger-live-desktop-1.6.0-linux-x86_64.AppImage
