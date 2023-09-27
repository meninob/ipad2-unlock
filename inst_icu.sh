!/bin/bash
cd /home
apt update && apt install -y usbmuxd libimobiledevice6 libimobiledevice-utils libavahi-compat-libdnssd-dev curl wget procps usbutils lsof tmux build-essential pkg-confi>
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
