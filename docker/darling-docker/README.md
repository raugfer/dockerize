# Running darling in docker

This is a Dockerfile to dockerize a darling session

## Usage

Build the image locally

    $ docker build -t darling .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname darling \
        --rm \
        --name darling \
        --privileged \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        darling
