# Running ocaml in docker

This is a Dockerfile to dockerize a ocaml bash session

## Usage

Build the image locally

    $ docker build -t ocaml .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname ocaml \
        --rm \
        --name ocaml \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        ocaml \
        bash
