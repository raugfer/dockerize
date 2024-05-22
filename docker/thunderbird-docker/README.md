# Running thunderbird in docker

This is a Dockerfile to dockerize a thunderbird session

## Usage

Build the image locally

    $ docker build -t thunderbird .

Create the settings folder

    $ mkdir -p $HOME/.config/dockerize/thunderbird/

Start the container

    $ docker run \
        -d \
        --rm \
        --name thunderbird \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/thunderbird/:/home/ubuntu/.thunderbird/ \
        -v $HOME/Downloads/:/home/ubuntu/Downloads/ \
        --device /dev/snd \
        thunderbird
