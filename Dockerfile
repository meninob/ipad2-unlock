FROM ubuntu:jammy

RUN apt-get update
RUN apt install -y software-properties-common
# to get apt-repository to work
RUN add-apt-repository ppa:quamotion/ppa && \
    apt install -y  libimobiledevice6 libimobiledevice-utils usbutils libimobiledevice-dev autoconf automake pkg-config bash build-essential libusbmuxd-tools && \
    libplist++-dev libplist-utils libplist++3v5 libplist-doc libgdiplus ideviceinstaller ifuse hfsutils mtp-tools gmtp jmtpfs go-mtpfs usbmuxd && \
    tmux git usbmuxd python3 wget libxml2-dev libcurl4-openssl-dev checkinstall libtool-bin libplist-dev

#RUN apt-get update -y && \
#    apt-get install -y bash usbmuxd build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev \
#       libxml2-dev \
#       libcurl4-openssl-dev \
#       usbmuxd
#RUN apt-get install -y git wget python3 usbutils tmux
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
RUN usbmuxd --systemd

#EOF
# ENTRYPOINT ["/usr/local/bin"]
# try also ideviceactivation activate -s icell.gearhostpreview.com/sliver.php -d
# to fix the dependency of the path - ref https://github.com/libimobiledevice/libimobiledevice/issues/31
