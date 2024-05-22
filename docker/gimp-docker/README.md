# Running gimp in docker

This is a Dockerfile to dockerize a gimp session

## Usage

Build the image locally

    $ docker build -t gimp .

Create the settings folder

    $ mkdir -p $HOME/.config/dockerize/gimp/ $HOME/Documents/

Start the container

    $ docker run \
        -d \
        --rm \
        --name gimp \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/gimp/:/home/ubuntu/.config/GIMP/ \
        -v $HOME/Documents/:/home/ubuntu/Documents/ \
        --device /dev/snd \
        gimp
