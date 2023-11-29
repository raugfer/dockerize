FROM alpine:3.18.4

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Alpine"

ARG USER=alpine

RUN apk update && apk upgrade && apk --no-cache add sudo

RUN addgroup ${USER}
RUN adduser -D -G ${USER} ${USER}
RUN echo "${USER} ALL=(ALL:ALL) NOPASSWD: ALL" > /etc/sudoers.d/${USER}
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
