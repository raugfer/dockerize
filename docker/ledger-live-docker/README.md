# Running ledger-live in docker

This is a Dockerfile to dockerize a ledger-live session

## Usage

Build the image locally

    $ docker build -t ledger-live .

Create the settings and projects folders

    $ mkdir -p $HOME/.config/ledger-live-docker/

Start the container

    $ docker run \
        -d \
        --rm \
        --name ledger-live \
        --cap-add SYS_ADMIN \
        --security-opt apparmor:unconfined \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/ledger-live-docker/:/home/ubuntu/.config/Ledger\ Live/ \
        --device /dev/fuse \
        $(for dev in /dev/hidraw*; do echo -n "--device $dev "; done) \
        ledger-live

Note that the device must be plugged before starting the container
