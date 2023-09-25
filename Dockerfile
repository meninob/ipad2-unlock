FROM debian:unstable-slim
WORKDIR /home
COPY inst_icu.sh unicloud.sh /home
RUN apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl \
wget procps usbutils lsof tmux build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev \
libimobiledevice-dev libxml2-dev libcurl4-openssl-dev

ENTRYPOINT /home/inst_icu.sh; /bin/bash
#run the following to build and create the icloud unlock container
# $ podman build --no-cache=true -t unicloud1 .     
# $ podman run -it --privileged -v /var/run:/var/run --net=host unicloud1:latest  
