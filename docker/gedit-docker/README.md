# Running gedit in docker

This is a Dockerfile to dockerize a gedit session

## Usage

Build the image locally

    $ docker build -t gedit .

Create the settings folder

    $ mkdir -p $HOME/.config/gedit-docker/config-dconf/ $HOME/.config/gedit-docker/local-share/ $HOME/Documents/

Start the container

    $ docker run \
        -d \
        --rm \
        --name gedit \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/gedit-docker/config-dconf/:/home/ubuntu/.config/dconf/ \
        -v $HOME/.config/gedit-docker/local-share/:/home/ubuntu/.local/share/ \
        -v $HOME/Documents/:/home/ubuntu/Documents/ \
        --device /dev/snd \
        gedit
