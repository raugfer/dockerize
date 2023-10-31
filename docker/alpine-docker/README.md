# Running alpine in docker

This is a Dockerfile to dockerize an alpine session

## Usage

Build the image locally

    $ docker build -t alpine .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname alpine \
        --rm \
        --name alpine \
        -v $HOME/Projects/:/home/alpine/Projects/ \
        -e TERM=$TERM \
        alpine \
        bash
