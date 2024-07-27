!/bin/bash
cd /home
apt update && apt install -y usbmuxd libtool-bin libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential \
  pkg-config git libtool nodejs libpq-dev usbutils usbmuxd make automake autoconf gcc doxygen libusbmuxd-dev libplist-dev libplist++-dev libssl-dev \
  checkinstall libusb-1.0-0-dev libtatsu
#libimobiledevice-glue-1.0
#libimobiledevice6 libimobiledevice-1.0-6
export PKG_CONFIG_PATH=/usr/loca;/lib/pkgconfig 

git clone https://github.com/libimobiledevice/libimobiledevice-glue
cd libimobiledevice-glue
./autogen.sh
make 
make install
cd ..

git clone https://github.com/libimobiledevice/libimobiledevice.git
cd libimobiledevice
./autogen.sh
make
make install
cd ..
ldconfig -v |& grep mobile
git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
PKG_CONFIG_PATH=/etc/pkgconfig ./autogen.sh
make
make install
#cp /home/libideviceactivation/tools/ideviceactivation/*.* /bin/
ldconfig -v |& grep mobile
echo 'ls /bin >> /home/lsbin.txt'
cd ..
#usbmuxd -v
#/home/unicloud.sh

#ideviceactivation activate -s cengdealajr.gearhostpreview.com/sliver.php -d
