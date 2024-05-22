# Running gnucash in docker

This is a Dockerfile to dockerize a gnucash session

## Usage

Build the image locally

    $ docker build -t gnucash .

Create the settings folder

    $ mkdir -p \
        $HOME/.config/dockerize/gnucash/config/ \
        $HOME/.config/dockerize/gnucash/local/ \
        $HOME/Documents/

Start the container

    $ docker run \
        -d \
        --rm \
        --name gnucash \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/gnucash/config/:/home/ubuntu/.config/ \
        -v $HOME/.config/dockerize/gnucash/local/:/home/ubuntu/.local/ \
        -v $HOME/Documents/:/home/ubuntu/Documents/ \
        --device /dev/snd \
        gnucash
