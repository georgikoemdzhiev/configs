#! /bin/bash

# Script that backups local NextCloud running in local area network server with address
# 192.168.1.141
# The destination of the back is a a HHD drive connected to the machine that executes the script
sudo rsync -aAX --delete --exclude "lost+found" pi@192.168.1.141:/media/pi/SSD/ /run/media/georgi/HHD/NextCloudBackup
