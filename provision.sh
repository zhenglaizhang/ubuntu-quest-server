
pip install pgcli


# make bootable disk with gddrescue
apt-get install gddrescue
fdisk -l
# take care to grap the device name of the usb disk
ddrescue -d -D --force <path and file name of the ISO> /dev/<device name>

# make bootable disk with dd
dd if=/home/user/downloads/ubuntu-16.04-server-amd64.iso of=/dev/sdc bs=1M; sync


# Mac
# hdiutil convert -format UDRW -o <path_to_save_IMG_file> <path_to_ISO_image> # convert img to iso
# diskutil list
# diskutil unmountDisk /dev/disk2
# # sudo dd if=<path_to_IMG_file> of=<device_node_of_usb_media> bs=1m
