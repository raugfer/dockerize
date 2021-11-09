# Running telegram-desktop in docker

This is a Dockerfile to dockerize a telegram-desktop session

## Usage

Build the image locally

    $ docker build -t telegram-desktop .

Create the settings folder

    $ mkdir -p $HOME/.config/telegram-desktop-docker/ $HOME/Downloads/

Start the container

    $ docker run \
        -d \
        --rm \
        --name telegram-desktop \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/telegram-desktop-docker/:/home/ubuntu/.local/share/TelegramDesktop/ \
        -v $HOME/Downloads/:/home/ubuntu/Downloads/ \
        telegram-desktop
