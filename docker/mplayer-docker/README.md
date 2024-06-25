# Running mplayer in docker

This is a Dockerfile to dockerize an mplayer session

## Usage

Build the image locally

    $ docker build -t mplayer .

Create the settings folder

    $ mkdir -p $HOME/Downloads/

Start the container

    $ docker run \
        -it \
        --rm \
        --name mplayer \
        --ipc=host \
        -e DISPLAY \
        -e TERM=$TERM \
        -e PULSE_SERVER=unix:/run/user/1000/pulse/native \
        -w $PWD \
        -v $HOME/Downloads/:/home/ubuntu/Downloads/ \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v /run/user/1000/pulse/native:/run/user/1000/pulse/native \
        mplayer
