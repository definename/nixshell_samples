# Bourne shell

- man test - to check shell operators

`symbolic` and `hard` links

- symbolic link points to the file,
- hard link points to the data

:penguin: # `mount` command

:penguin: Get device or lable to mount:
`sudo blkid`

:penguin: Mount device with mask `drwxr-xr-x`
`sudo mount /dev/sdb2 /media/$USER/mycop -o umask=022`

:penguin: Mount device via device lable
`sudo mount -L mycop /media/$USER/mycop -o umask=022`

