FROM debian:unstable-slim
WORKDIR /home
COPY ./inst_icu.sh /home
RUN apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev libxml2-dev libcurl4-openssl-dev && ./home/inst_icu.sh

#CMD /home/inst.icu.sh

#CMD ["cd /home";"git clone https://github.com/libimobiledevice/libideviceactivation.git";"cd libideviceactivation";"./autogen.sh";" make";" make install";"cp tools/ideviceactivation*.* /bin";" ldconfig -v |& grep mobile";" echo 'ls /bin >> /home/lsbin.txt'"]
#CMD ["/bin/bash", "-c", "wget https://github.com/meninob/ipad2-unlock/blob/main/inst.sh /home && /home/inst.sh"]
#CMD echo hello >> /home/lsbin.txt
#RUN cd /home;git clone https://github.com/libimobiledevice/libideviceactivation.git; cd libideviceactivation; ./autogen.sh; make;make install;cp tools/*.* \
#    /bin;ldconfig -v |& grep mobile; echo 'ls /bin >> /home/lsbin.txt'
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
