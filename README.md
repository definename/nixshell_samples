- `man test` - to check shell operators
- `man magic` - to check file type

# Bourne-Again Shell(bash)
Alternative shell:
- Korn Shell (ksh)
- C Shell

# Table of contents

## Info
  - [Hardware](#hardware-info)
  - [Software](#software-info)
## Command
  - [mount](#mount-command)
  - [dpkg](#dpkg-command)
  - [apt and apt-get command](#apt-and-apt-get-command)
  - [ln](#ln-command)

---

# Info

## Hardware info:

CPU `32/64-bit` installed: `lscpu | grep Architecture`

## Software info:

Linux kernel `32/64-bit`: `getconf LONG_BIT` or `uname -i`

---

# Command

## `ln` command

> [HowTo](https://www.ibm.com/developerworks/ru/library/l-lpic1-v3-104-6/index.html) work with ln command

Usage example: `sudo ln -s ./bash sh`

Поиск всех символических ссылок на файл или директорию: `find . -lname ./filename`

Для вывода номеров индексных дескрипторов inode файлов и директорий: `ll -i` 

:penguin: `symlink` points to the objectname (filename)

In order to find all symlink in current dirrectory: `find . -type l`

:penguin: `hardlink` points to the data, inode descriptor of the file/folder

Жесткие ссылки можно создавать только для файлов, но не для директорий. 

## `mount` command

> [HowTo](https://help.ubuntu.ru/wiki/%D0%BC%D0%BE%D0%BD%D1%82%D0%B8%D1%80%D0%BE%D0%B2%D0%B0%D0%BD%D0%B8%D0%B5_%D1%80%D0%B0%D0%B7%D0%B4%D0%B5%D0%BB%D0%BE%D0%B2) mount partitions on Ubuntu

:penguin: Partition UUID:

`sudo blkid`

:penguin: Mount device with mask `drwxrwxr-x`:

`sudo mount /dev/sdb2 /media/$USER/mycop -o umask=002`

:penguin: Mount device using device lable:

`sudo mount -L mycop /media/$USER/mycop -o umask=002`

:penguin: Filesystem report:

`df -h`

:penguin: `/etc/fstab` record for ntfs partition :

`UUID="A818CCE429EDA9E7" /media/olegk/mycop ntfs rw,nls=utf8,uid=olegk,gid=plugdev,umask=002 0 0`

## `dpkg` command

[dpkg](https://wiki.debian.org/DebianPackageManagement) packaging system

## `apt` and `apt-get` command

:penguin: Using [apt-get](https://itsfoss.com/apt-get-linux-guide/) command In Linux

:penguin: Using [apt](https://itsfoss.com/apt-command-guide/) command In Linux
> APT(Advanced Packaging Tool)

:penguin: Difference Between [apt and apt-get](https://itsfoss.com/apt-vs-apt-get-difference/)
> Bottom line: apt=most common used command options from apt-get and apt-cache.
> apt is a subset of apt-get and apt-cache commands providing necessary commands for package management

`sudo apt-get update` only updates the database of the packages (e.g, if you have XYX package version 1.3 installed, after apt-get update, the database will be aware that a newer version 1.4 is available).

When you do an `sudo apt-get upgrade` after `apt-get update`, it upgrades (or updates, whichever term you prefer) the installed packages to the newer version.

[Top](#table-of-contents)
