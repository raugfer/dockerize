# Running rust in docker

This is a Dockerfile to dockerize a rust bash session

## Usage

Build the image locally

    $ docker build -t rust .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname rust \
        --rm \
        --name rust \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        rust \
        bash
