# Running android-studio in docker

This is a Dockerfile to dockerize an android-studio session

## Usage

Build the image locally

    $ docker build -t android-studio .

Create the settings and projects folders

    $ mkdir -p $HOME/.config/android-studio-docker/ $HOME/Projects/

Start the container

    $ docker run \
        -d \
        --rm \
        --name android-studio \
        -e DISPLAY \
        -v /tmp/.X11-unix/:/tmp/.X11-unix/ \
        -v $HOME/.config/android-studio-docker/:/home/ubuntu/ \
        -v $HOME/Projects/:/home/ubuntu/Projects/ \
        --device /dev/dri \
        --device /dev/kvm \
        --device /dev/snd \
        --device /dev/bus/usb \
        android-studio

Finally grant read/write access to kvm and usb devices to run on the emulator or phone

    $ docker exec \
        -u root \
        android-studio \
        chmod 666 /dev/kvm /dev/bus/usb/*/*

Note that a phone must be plugged before starting the container
