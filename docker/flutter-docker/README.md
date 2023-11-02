# Running flutter in docker

This is a Dockerfile to dockerize an flutter bash session

## Usage

Build the image locally

    $ docker build -t flutter .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname flutter \
        --rm \
        --name flutter \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        flutter \
        bash
