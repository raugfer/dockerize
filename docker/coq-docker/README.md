# Running coq in docker

This is a Dockerfile to dockerize a coq bash session

## Usage

Build the image locally

    $ docker build -t coq .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname coq \
        --rm \
        --name coq \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        coq \
        bash
