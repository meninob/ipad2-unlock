FROM debian:unstable-slim
WORKDIR /home
COPY inst_icu.sh unicloud.sh /home
RUN apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl \
wget procps usbutils lsof tmux build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev \
libimobiledevice-dev libxml2-dev libcurl4-openssl-dev

ENTRYPOINT /home/inst_icu.sh; /bin/bash



