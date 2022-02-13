# OpenCV installation

**GPU Memory** <br>
The physical RAM is used both by CPU and GPU. On the rpi 2 and 3, it's allocated for GPU with 64 Mbyte in default, and has 76 Mbyte for rpi 4. And it's better to change it into 128 Mbyte to have a better proformance.

**EEPROM** <br>
The rpi 3 has all operating software on the SD card, but the rpi 4 is partially booted from two EEPROMs. By update the EEPROMs, it could literally cool down the temperature of CPU, and give the rpi longer life span.
```shell
# to get the current status
$ sudo rpi-eeprom-update
# if needed, then update the firmware
$ sudo rpi-eeprom-update -a
$ sudo reboot
```

**Swap memory** <br>
OpenCV neededs lots of memory to compile. Thus, to increase the swap is needed. In the `/sbin/dphys-swapfile` change the `CONF_MAXSWAP` to 4096MByte, and in the `/etc/dphys-swapfile` set the `CONF_SWAPSIZE` to 4096 MByte, also.
```shell
# edit the swap configuration
$ sudo nano /sbin/dphys-swapfile
$ sudo nano /etc/dphys-swapfile
# reboot
$ sudo reboot
```
