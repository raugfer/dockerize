# Running keybase in docker

This is a Dockerfile to dockerize a keybase session

## Usage

Build the image locally

    $ docker build -t keybase .

Create the settings folder

    $ mkdir -p \
        $HOME/.config/keybase-docker/keybase/ \
        $HOME/.config/keybase-docker/Keybase/ \
        $HOME/.config/keybase-docker/share/keybase/

Start the container

    $ docker run \
        -d \
        --rm \
        --name keybase \
        --cap-add SYS_ADMIN \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/keybase-docker/keybase/:$HOME/.config/keybase/ \
        -v $HOME/.config/keybase-docker/Keybase/:$HOME/.config/Keybase/ \
        -v $HOME/.config/keybase-docker/share/keybase/:$HOME/.local/share/keybase/ \
        -v /run/user:/run/user \
        keybase
