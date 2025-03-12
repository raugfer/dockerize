# Running android in docker

This is a Dockerfile to dockerize an android session

## Usage

Build the image locally

    $ docker build -t android .

Create the settings folder

    $ mkdir -p $HOME/.config/dockerize/android/

Start the container

    $ docker run \
        -d \
        --rm \
        --name android \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/dockerize/android/:/home/ubuntu/.android/ \
        --device /dev/kvm \
        android
