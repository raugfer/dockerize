# Running golang in docker

This is a Dockerfile to dockerize a golang bash session

## Usage

Build the image locally

    $ docker build -t golang .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname golang \
        --rm \
        --name golang \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        golang \
        bash
