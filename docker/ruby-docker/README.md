# Running ruby in docker

This is a Dockerfile to dockerize a ruby bash session

## Usage

Build the image locally

    $ docker build -t ruby .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname ruby \
        --rm \
        --name ruby \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        ruby \
        bash
