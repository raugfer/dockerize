# Running node in docker

This is a Dockerfile to dockerize a node bash session

## Usage

Build the image locally

    $ docker build -t node .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname node \
        --rm \
        --name node \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        node \
        bash
