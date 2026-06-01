FROM ubuntu:24.04
RUN \
	apt-get update && \
	apt-get upgrade -y && \
	apt-get install -y dbus-x11 fonts-dejavu-core fonts-dejavu-mono \
	fonts-droid-fallback fonts-liberation fonts-liberation-sans-narrow \
	fonts-noto-cjk fonts-noto-color-emoji fonts-noto-core fonts-noto-mono \
	fonts-ubuntu fonts-urw-base35 libcanberra-gtk3-module yaru-theme-gtk \
	yaru-theme-icon yaru-theme-sound && \
	apt-get clean

MAINTAINER "Rodrigo Ferreira https://hub.docker.com/u/raugfer/"

LABEL Description "Antigravity"

ARG USER=ubuntu

RUN apt-get update && apt-get install -y curl gpg wget && apt-get clean
RUN curl -fsSL https://us-central1-apt.pkg.dev/doc/repo-signing-key.gpg | gpg --dearmor --yes -o /usr/share/keyrings/antigravity-repo-key.gpg
RUN echo "deb [signed-by=/usr/share/keyrings/antigravity-repo-key.gpg] https://us-central1-apt.pkg.dev/projects/antigravity-auto-updater-dev/ antigravity-debian main" | tee /etc/apt/sources.list.d/antigravity.list
RUN apt-get update && apt-get install -y antigravity && apt-get clean
RUN wget https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
RUN apt-get update && apt-get install -y ./google-chrome-stable_current_amd64.deb && apt-get clean
RUN rm ./google-chrome-stable_current_amd64.deb
RUN sed -i 's|"\$HERE/chrome"|"\$HERE/chrome" --no-sandbox|g' /opt/google/chrome/google-chrome
COPY start.sh /start.sh

ENV DISPLAY=:0

RUN groupmod -n ${USER} ubuntu
RUN usermod -l ${USER} -d /home/${USER} -m ubuntu
USER ${USER}
ENV USER=${USER}
WORKDIR /home/${USER}/
RUN mkdir -p .config .gemini
CMD ["/start.sh"]
