FROM ubuntu:jammy

RUN apt-get update -y && \
    apt-get install -y bash usbmuxd build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev \
        libxml2-dev \
        libcurl4-openssl-dev \
        usbmuxd
RUN apt-get install -y git wget python3 usbutils tmux
RUN git clone https://github.com/libimobiledevice/libideviceactivation.git && \
    cd libideviceactivation && \
    ./autogen.sh --prefix=/opt/local && \
    make && \
    make install
RUN git clone https://github.com/libimobiledevice/libimobiledevice-glue.git && \
    cd libimobiledevice-glue && \
    ./autogen.sh --prefix=/opt/local && \
    make && \
    make install
    
EXPOSE 80
RUN ldconfig
#RUN usbmuxd

#EOF
# ENTRYPOINT ["/usr/local/bin"]
# try also ideviceactivation activate -s icell.gearhostpreview.com/sliver.php -d
# to fix the dependency of the path - ref https://github.com/libimobiledevice/libimobiledevice/issues/31
