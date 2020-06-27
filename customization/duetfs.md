---
title: Duet file system optimisations
---

Various opimisations for Duet file system optimisations:

### Backup!

FAT16/32 file systems are not resiliant. Either back up your files from the Duet web interfae periodically, eject and copy the microSD or use a [script to automate it](../software/backup.md)

### Large clusters on MicroSD

For best performance, the card should be formatted with the cluster size as large as possible. On smaller capacity cards this is achieved using FAT16 format, but that is not an option on larger capacity cards." "For 4Gb and under cards, use FAT16 format. FAT16 provides an additional performance boost over FAT32." 

Source: [dc42](https://forum.duet3d.com/topic/3569/completely-replace-sd-card-duet-ethernet/9)

### Use of SD-Formatter to format the large clusters

Using https://www.sdcard.org/downloads/formatter_4/  is a good tool to use, because it will determine the best way to format your card based on what your card is.

> statistics: Max block time uSD
> 
> **Card delivered with Duet3D**
>
> * 360-400ms
>
> **SanDisk uSD Ultra SDHC I 8GB**
>
> * formatted 4K (Win 7): 800ms!
> * formatted 32K (SD-Formatter) : 7.9ms, 8.6 ms

Source: https://forum.duet3d.com/post/62959


### Try a Class 4 card if you have one.

> Class 10 cards will often perform poorly. Some brands of Class 4 cards (e.g. Sandisk) perform much better. The reason is that the speed you get when uploading a large file is dominated by how fast the card handles non-sequential writes when updating the FAT, and Class 10 cards typically handle these about 1000 times slower than they handle sequential writes. See [forum.xda-developers.com] for some measurements.

Source: [dc42](https://reprap.org/forum/read.php?340,557845,557845#msg-557845)
