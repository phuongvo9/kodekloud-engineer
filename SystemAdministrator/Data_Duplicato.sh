# 5 Practical examples of the dd command - Ref linuxhandbook.com
# Clone disks


# fdisk to identify disks, their partitions, and their capacity.
sudo fdisk -l

# clone disk sda to sdb (same size)
sudo dd if=/dev/sda of=/dev/sdb

# Backing up a disk partition
dd if=/dev/sda2 of=home_backup.img


#  BS, or block size - Block devices are usually physical media with finite storage
    # example of a CD-ROM which has its own defined block size (2048). Each block must have a maximum of 2048 bytes.
    # Even if a block only contains 100 bytes of data, it will still take up the same 2048 bytes.

sudo dd if=/dev/sda of=home_backup.img bs=1024

# Delete data and zero the Disk - replace every block of 'sda' with zeroes
dd if=/dev/zero of=/dev/sda

# Create a bootable USB
    # mkfs command to build the filesystem to our USB before running "dd"
sudo mkfs.ext4 /dev/sdb
dd if=someFile.iso of=/dev/sdb
