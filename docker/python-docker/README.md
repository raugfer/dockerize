# Running python in docker

This is a Dockerfile to dockerize a python bash session

## Usage

Build the image locally

    $ docker build -t python .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname python \
        --rm \
        --name python \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        python \
        bash
