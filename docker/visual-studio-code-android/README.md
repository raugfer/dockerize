# Running visual-studio-code in docker

This is a Dockerfile to dockerize a visual-studio-code session

## Usage

Build the image locally

    $ docker build -t visual-studio-code .

Create the settings folder

    $ mkdir -p $HOME/.config/visual-studio-code-docker/

Start the container

    $ docker run \
        -d \
        --rm \
        --name visual-studio-code \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/visual-studio-code-docker/:/home/ubuntu/.config/Code/ \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        visual-studio-code
