### Enable FTP and backup your SDcard

1. Enable FTP - "M586 P1 S1" (see https://github.com/railcore/configs/blob/master/duet/sys/config.g line 12, you can also set a password, see line 6)
1. Set up an FTP client such as filezilla, with a connection to the Railcores IP/hostname.
1. Under transfer settings set "Maximum number of connections" to 1.

You should now be able to connect to the Duet and upload/download any and all files.
Be aware that the FTP implementation on the Duet is a little buggy, so advise that only connect via FTP between prints (and you may have to reboot/emergency stop the Duet occasionally if you find after certain FTP operations that it stops working.)
