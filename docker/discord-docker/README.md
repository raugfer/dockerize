# Running discord in docker

This is a Dockerfile to dockerize a discord session

## Usage

Build the image locally

    $ docker build -t discord .

Create the settings folder

    $ mkdir -p $HOME/.config/discord-docker/

Start the container

    $ docker run \
        -d \
        --rm \
        --name discord \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/discord-docker/:/home/ubuntu/.config/discord/ \
        discord
