# OpenCV installation

**GPU Memory**
The physical RAM is used both by CPU and GPU. On the rpi 2 and 3, it's allocated for GPU with 64 Mbyte in default, and has 76 Mbyte for rpi 4. And it's better to change it into 128 Mbyte to have a better proformance.

**EEPROM**
```shell
# to get the current status
$ sudo rpi-eeprom-update
# if needed, then update the firmware
$ sudo rpi-eeprom-update -a
$ sudo reboot
```
