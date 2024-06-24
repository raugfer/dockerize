# Running opera-developer in docker

This is a Dockerfile to dockerize an opera-developer session

## Usage

Build the image locally

    $ docker build -t opera-developer .

Create the settings folder

    $ mkdir -p $HOME/.config/dockerize/opera-developer/ $HOME/Downloads/

Start the container

    $ docker run \
        -d \
        --rm \
        --name opera-developer \
        --cap-add SYS_ADMIN \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/opera-developer/:/home/ubuntu/.config/opera-developer/ \
        -v $HOME/Downloads/:/home/ubuntu/Downloads/ \
        --device /dev/dri \
        --device /dev/snd \
        --device /dev/video0 \
        opera-developer
