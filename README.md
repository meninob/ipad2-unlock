# ipad2-unlock

#This is the software using the libimobiledevice - ideviceactivation to activate the icloud locked ipad2.
#
# I got it to work using podman container, using a localized script that I copy to do the task.
# After the local script is copied, it runs the required apt installs, goes into the libimobiledevice git repo, compiles the executables, and then runs it, to unlock the ipad device, if connected.

# it also uses the ldconfig, which is in the script inst_icu.sh file, to address errors when running ideviceactivation, after initial installation. This is probably because of configuration files not in the right path.

# tried to get it working in an Acer Chromebook R16 I think, but it did not work, even after ensuring that the ipad device is allocated to the linux subsystem
# also note that if running the unlock script over internet, using a vodafone network, it will be blocked by vodafone

#note to use the sliver.php and the celeanger server app

#After the Dockerfile is built using the $podman build -t icloud-unlock:unlock .

# creation of container is $podman run -it -v /var/run:/var/run --entrypoint=/bin/bash icloud-unlock:latest

# to try using this, as bash script is not running inside the dockerfile during build of the podman container
# ENTRYPOINT /my-script.sh ; /my-script2.sh ; /bin/bash

# try the following ref - https://stackoverflow.com/questions/31578446/running-a-script-inside-a-docker-container-using-shell-script

In case you don't want (or have) a running container, you can call your script directly with the run command.

Remove the iterative tty -i -t arguments and use this:

    $ docker run ubuntu:bionic /bin/bash /path/to/script.sh

This will (didn't test) also work for other scripts:

    $ docker run ubuntu:bionic /usr/bin/python /path/to/script.py


This command worked for me

cat local_file.sh | docker exec -i container_name bash


# following are just excerpts for reference. ignore for now.
.
.
.
.
.

run $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
use for reference - docker run -it -v /var/run:/var/run --entrypoint=/bin/bash debian:unstable-slim


reference old one = $podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host 55b4bde1184c
reference website, but for idevicerestore = https://github.com/lukepasek/idevicerestore
