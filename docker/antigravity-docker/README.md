# Running antigravity in docker

This is a Dockerfile to dockerize a antigravity session

## Usage

Build the image locally

    $ docker build -t antigravity .

Create the settings folder

    $ mkdir -p \
        $HOME/.config/dockerize/antigravity/.antigravity/ \
        $HOME/.config/dockerize/antigravity/.config/Antigravity/ \
        $HOME/.config/dockerize/antigravity/.gemini/antigravity/ \
        $HOME/Projects/

Start the container

    $ docker run \
        -d \
        --rm \
        --name antigravity \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/antigravity/.antigravity/:$HOME/.antigravity/ \
        -v $HOME/.config/dockerize/antigravity/.config/Antigravity/:$HOME/.config/Antigravity/ \
        -v $HOME/.config/dockerize/antigravity/.gemini/antigravity/:$HOME/.gemini/antigravity/ \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        --device /dev/dri \
        antigravity
