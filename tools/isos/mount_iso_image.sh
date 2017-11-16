#/bin/bash
sudo losetup -f
sudo losetup /dev/loop0 image.iso 
sudo partprobe /dev/loop0

# You will have as many /dev/loop0pX (being X a number)
# as partitions inside your image
sudo mount /dev/loop0p2 /path/to/mountpoint/

# For unmount the partition
#   sudo umount /dev/loop0p2

# For deleting the /dev/loop0
#   sudo losetup -d /dev/loop0
