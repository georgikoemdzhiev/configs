#! /bin/bash

# Script that backups local NextCloud running in local area network server with address
# 192.168.1.207

if mount | grep /run/media/georgi/HHD > /dev/null; then
  # The destination of the back is a a HHD drive connected to the machine that executes the script
  sudo rsync -aAX -P --delete --exclude "lost+found" pi@192.168.1.207:/home/pi/NextCloud/SSD/ /run/media/georgi/HHD/NextCloudBackup
else
  echo "HHD device not Mounted. Mount it at '/run/media/georgi/HHD' first and rerun the script"
fi
