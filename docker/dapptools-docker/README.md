# Running dapptools in docker

This is a Dockerfile to dockerize a dapptools bash session

## Usage

Build the image locally

    $ docker build -t dapptools .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname dapptools \
        --rm \
        --name dapptools \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        dapptools \
        bash
