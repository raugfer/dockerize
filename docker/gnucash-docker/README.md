# Running gnucash in docker

This is a Dockerfile to dockerize a gnucash session

## Usage

Build the image locally

    $ docker build -t gnucash .

Create the settings folder

    $ mkdir -p \
        $HOME/.config/gnucash-docker/config-dconf/ \
        $HOME/.config/gnucash-docker/config-gnucash/ \
        $HOME/.config/gnucash-docker/local-share/ \
        $HOME/Documents/

Start the container

    $ docker run \
        -d \
        --rm \
        --name gnucash \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/gnucash-docker/config-dconf/:/home/ubuntu/.config/dconf/ \
        -v $HOME/.config/gnucash-docker/config-gnucash/:/home/ubuntu/.config/gnucash/ \
        -v $HOME/.config/gnucash-docker/local-share/:/home/ubuntu/.local/share/ \
        -v $HOME/Documents/:/home/ubuntu/Documents/ \
        --device /dev/snd \
        gnucash
