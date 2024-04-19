!/bin/bash
cd /home
apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential \
  pkg-config git libtool nodejs libpq-dev usbutils usbmuxd make automake autoconf gcc doxygen libusbmuxd-dev libplist-dev libplist++-dev libssl-dev \
  checkinstall libusb-1.0-0-dev 
git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
./autogen.sh
make
make install
#cp /home/libideviceactivation/tools/ideviceactivation/*.* /bin/
ldconfig -v |& grep mobile
echo 'ls /bin >> /home/lsbin.txt'
#usbmuxd -v
#/home/unicloud.sh
#ideviceactivation activate -s cengdealajr.gearhostpreview.com/sliver.php -d
