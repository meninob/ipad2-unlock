FROM ubuntu:jammy

RUN apt-get update -y && \
    apt-get install -y bash usbmuxd build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev \
	libxml2-dev \
	libcurl4-openssl-dev \
	usbmuxd
RUN apt-get install -y git wget python3 usbutils tmux
RUN git clone https://github.com/libimobiledevice/libideviceactivation.git && \
    cd libideviceactivation && \
    ./autogen.sh && \
    make && \
    make install
    
EXPOSE 80
RUN ldconfig
#RUN usbmuxd

#EOF
# ENTRYPOINT ["/usr/local/bin"]

