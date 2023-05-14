# Running ubuntu in docker

This is a Dockerfile to dockerize an ubuntu session

## Usage

Build the image locally

    $ docker build -t ubuntu .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname ubuntu \
        --rm \
        --name ubuntu \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        ubuntu \
        bash
