# Running google-chrome in docker

This is a Dockerfile to dockerize a google-chrome session

## Usage

Build the image locally

  $ docker build -t google-chrome .

Create the settings folders

  $ mkdir -p $HOME/.config/google-chrome-docker/

Start the container

  $ docker run \
	-d \
	--rm \
	--name google-chrome \
	--cap-add SYS_ADMIN \
	-e DISPLAY \
	-v /tmp/.X11-unix/:/tmp/.X11-unix/ \
	-v $HOME/.config/google-chrome/:/home/ubuntu/.config/google-chrome/ \
	--device /dev/snd \
	google-chrome
