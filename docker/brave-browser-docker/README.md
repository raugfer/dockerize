# Running brave-browser in docker

This is a Dockerfile to dockerize a brave-browser session

## Usage

Build the image locally

    $ docker build -t brave-browser .

Create the settings folder

    $ mkdir -p $HOME/.config/brave-browser-docker/ $HOME/Downloads/

Start the container

    $ docker run \
        -d \
        --rm \
        --name brave-browser \
        --cap-add SYS_ADMIN \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/brave-browser-docker/:/home/ubuntu/.config/BraveSoftware/Brave-Browser/ \
        -v $HOME/Downloads/:/home/ubuntu/Downloads/ \
        --device /dev/snd \
        brave-browser
