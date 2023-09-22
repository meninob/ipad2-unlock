#/bin/bash
cd /home
git clone https://github.com/libimobiledevice/libideviceactivation.git
cd libideviceactivation
./autogen.sh
make
make install
cp tools/*.* /bin
ldconfig -v |& grep mobile
ideviceactivation activate -s cengdealajr.gearhostpreview.com/sliver.php -d
 
