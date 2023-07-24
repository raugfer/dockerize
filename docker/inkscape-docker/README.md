# Running inkscape in docker

This is a Dockerfile to dockerize an inkscape session

## Usage

Build the image locally

    $ docker build -t inkscape .

Create the settings folder

    $ mkdir -p $HOME/.config/inkscape-docker/ $HOME/Documents/

Start the container

    $ docker run \
        -d \
        --rm \
        --name inkscape \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/inkscape-docker/:/home/ubuntu/.config/inkscape/ \
        -v $HOME/Documents/:/home/ubuntu/Documents/ \
        --device /dev/snd \
        inkscape
