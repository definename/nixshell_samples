# Bourne shell

- man test - to check shell operators

`symbolic` and `hard` links

- symbolic link points to the file,
- hard link points to the data

# :penguin: `mount` command

## Get device or lable to mount:
`sudo blkid`

## Mount device with mask `drwxr-xr-x`
`sudo mount /dev/sdb2 /media/$USER/mycop -o umask=022`

## Mount device via device lable
`sudo mount -L mycop /media/$USER/mycop -o umask=022`

