# ipad2-unlock

# I got it to work using podman container, manually first, and tnow working on the Dockerfile to automate it. Fingers crossed this time with Dockerfile.try4 will work.
# This is a Dockerfile container, but using podman, to containerize the application of libimobiledevice ideviceactivation, to unlock ipad2
# Somehow I got it to work in linux mint 21.x, but this here is killing me so far. will keep trying.
# also uses usbmuxd daemon, to connect ot the ipad.

# remember to use ldconfig, which is in the file, to address errors when running ideviceactivation, after initial installation. This is probably because of configuration files not in the right path.

# ver 1.0 still under development to get it to work

#note to use the sliver.php and the celeanger server app

After the Dockerfile is built using the $podman build -t icloud-unlock:unlock .

run $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
use for reference - docker run -it -v /var/run:/var/run --entrypoint=/bin/bash debian:unstable-slim


reference old one = $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
