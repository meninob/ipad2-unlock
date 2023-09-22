# ipad2-unlock

#This is the software using the libimobiledevice
# I got it to work using podman container, manually right now.
Working on the Dockerfile to automate it. Fingers crossed this time with Dockerfile.try4 will work.
# This is a Dockerfile container, but using podman, to containerize the application of libimobiledevice ideviceactivation, to unlock ipad2

# remember to use ldconfig, which is in the file, to address errors when running ideviceactivation, after initial installation. This is probably because of configuration files not in the right path.

# ver .try4 still under development to get it to work. but got it to work manually. trying to automate it through dockerfile.try4. Will confirm soon after testing

#note to use the sliver.php and the celeanger server app

After the Dockerfile is built using the $podman build -t icloud-unlock:unlock .

run $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
use for reference - docker run -it -v /var/run:/var/run --entrypoint=/bin/bash debian:unstable-slim


reference old one = $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
reference website, but for idevicerestore = https://github.com/lukepasek/idevicerestore
