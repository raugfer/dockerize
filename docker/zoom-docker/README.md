# Running zoom in docker

This is a Dockerfile to dockerize a zoom session

## Usage

Build the image locally

    $ docker build -t zoom .

Create the settings folder

    $ mkdir -p $HOME/.config/zoom-docker/

Start the container

    $ docker run \
        -d \
        --rm \
        --name zoom \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/zoom-docker/:/home/ubuntu/.zoom/ \
        --device /dev/snd \
        --device /dev/video0 \
        zoom
