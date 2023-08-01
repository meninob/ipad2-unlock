# ipad2-unlock

# This is a Dockerfile container, but using podman, to containerize the application of libimobiledevice ideviceactivation, to unlock ipad2
# also uses usbmuxd daemon, to connect ot the ipad.

# remember to use ldconfig, which is in the file, to address errors when running ideviceactivation, after initial installation. This is probably because of configuration files not in the right path.

# ver 1.0 still under development to get it to work

#note to use the sliver.php and the celeanger server app
