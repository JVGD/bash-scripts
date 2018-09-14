#Creating loopback device
sudo modprobe loop
sudo losetup -f
sudo losetup /dev/loop0 myimage.img
sudo partprobe /dev/loop0

#Resize partition using GParted
sudo gparted /dev/loop0
sudo losetup -d /dev/loop0

#Shaving the image
fdisk -l myimage.img

  Disk myimage.img: 6144 MB, 6144000000 bytes, 12000000 sectors
  Units = sectors of 1 * 512 = 512 bytes
  Sector size (logical/physical): 512 bytes / 512 bytes
  I/O size (minimum/optimal): 512 bytes / 512 bytes
  Disk identifier: 0x000ea37d
  
        Device Boot      Start         End      Blocks   Id  System
       myimage.img1       2048     9181183     4589568    b  W95 FAT32

#Truncate (End+1) * sector_bytes
truncate --size=$[(9181183+1)*512] myimage.img
