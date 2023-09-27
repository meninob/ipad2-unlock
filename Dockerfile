FROM debian:unstable-slim
WORKDIR /home
COPY inst_icu.sh unicloud.sh /home
#COMMIT
RUN /home/inst_icu.sh

ENTRYPOINT ["/bin/bash"]

#This works to run the inst_icu script, instead od CMD, which doe not seem to work at all, after racking my brain for a few days on this.
#run the following to build and create the icloud unlock container
# $ podman build --no-cache=true -t unicloud1 .     
# $ podman run -it --privileged -v /dev/bus/usb/001:/dev/bus/usb/001 --net=host unicloud1:latest 
#foudn out that usbmuxd -d needs to be run, before activation, and also idevicepair pair, while putting 'trust' from the ipad first.
