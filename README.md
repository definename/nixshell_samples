# Bourne shell

- man test - to check shell operators

`symbolic` and `hard` links

- symbolic link points to the file,
- hard link points to the data

#mount command [#mount_command]

# :penguin: `mount` command

> [HowTo](https://help.ubuntu.ru/wiki/%D0%BC%D0%BE%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2) mount partitions on Ubuntu

## Partition UUID:
`sudo blkid`

## Mount device with mask `drwxrwxr-x`
`sudo mount /dev/sdb2 /media/$USER/mycop -o umask=002`

## Mount device via device lable
`sudo mount -L mycop /media/$USER/mycop -o umask=002`

## Filesystem report
`df -h`

## `/etc/fstab` record for ntfs partition

`UUID="A818CCE429EDA9E7" /media/olegk/mycop ntfs rw,nls=utf8,uid=olegk,gid=plugdev,umask=002 0 0`

# :penguin: Unix package management

- Using [apt-get](https://itsfoss.com/apt-get-linux-guide/) Commands In Linux
- Difference Between [apt and apt-get](https://itsfoss.com/apt-vs-apt-get-difference/)

`sudo apt-get update` only updates the database of the packages (e.g, if you have XYX package version 1.3 installed, after apt-get update, the database will be aware that a newer version 1.4 is available).

When you do an `sudo apt-get upgrade` after `apt-get update`, it upgrades (or updates, whichever term you prefer) the installed packages to the newer version.
