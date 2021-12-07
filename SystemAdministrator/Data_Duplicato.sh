# 5 Practical examples of the dd command
# Clone disks


# fdisk to identify disks, their partitions, and their capacity.
sudo fdisk -l

# clone disk sda to sdb (same size)
sudo dd if=/dev/sda of=/dev/sdb

