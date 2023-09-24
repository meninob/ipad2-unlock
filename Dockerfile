FROM debian:unstable-slim

RUN apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev libxml2-dev libcurl4-openssl-dev
#CMD "idevicepair pair"

CMD ["cd /home";"git clone https://github.com/libimobiledevice/libideviceactivation.git"; "cd libideviceactivation"; "./autogen.sh"; "make";"make install"; "cp tools/ideviceactivation*.* /bin";"ldconfig -v |& grep mobile";"echo 'ls /bin >> /home/lsbin.txt'"]
#RUN cd /home;git clone https://github.com/libimobiledevice/libideviceactivation.git; cd libideviceactivation; ./autogen.sh; make;make install;cp tools/*.* /bin;ldconfig -v |& grep mobile; echo 'ls /bin >> /home/lsbin.txt'
#RUN cp /home/libideviceactivation/tools/ideviceactivation*.* /bin
#CMD ["cd libideviceactivation"]
#CMD ./autogen.sh
#CMD make
#CMD make install
#CMD cd tools
#CMD ["ldconfig", "-v","|& grep mobile"]
#CMD ["ideviceactivation","state"]
#CMD ["usbmuxd", "-d"]
#CMD ["ideviceactivation activate -s cengdealajr.gearhostpreview.com/sliver.php -d"]
