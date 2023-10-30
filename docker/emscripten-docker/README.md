# Running emscripten in docker

This is a Dockerfile to dockerize an emscripten bash session

## Usage

Build the image locally

    $ docker build -t emscripten .

Create the projects folders

    $ mkdir -p $HOME/Projects/

Start the container

    $ docker run \
        -it \
        --hostname emscripten \
        --rm \
        --name emscripten \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        -e TERM=$TERM \
        emscripten \
        bash
