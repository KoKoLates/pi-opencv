# OpenCV Installation

## Pre-Installation

**GPU Memory** <br>
The physical RAM is used both by CPU and GPU. On the raspberry pi 2 and 3, it's allocated for GPU with 64 Mbyte in default, and has 76 Mbyte for raspberry pi 4. And it's recommended to change it into `128` Mbyte to have a better proformance.

1. Open the terminal on Raspberry pi
2. `sudo raspi-config` 
3. `Advanced Options` $\rightarrow$ `Memory Split`
4. Update the memory for GPU, then finish
5. Reboot the Raspberry pi

**EEPROM** <br>
The previous generations raspberry pi has all operating software on the SD card, but from the pi 4, it actually has onbroad upgradable firmware on EEPROM. By update the EEPROMs, it could literally reduce the power usage and cool down the temperature of CPU, give it a longer life span.
```shell
sudo apt update
sudo apt full-upgrade
sudo apt install rpi-eeprom
# check for updates
$ sudo rpi-eeprom-update
# if needed, then update the firmware
$ sudo rpi-eeprom-update -a
$ sudo reboot
```

**Swap memory** <br>
OpenCV neededs lots of memory to compile. Thus, to increase the swap is needed. In the `/sbin/dphys-swapfile` change the `CONF_MAXSWAP` to 4096 MByte, and in the `/etc/dphys-swapfile` set the `CONF_SWAPSIZE` to 4096 MByte, also.
```shell
# edit the swap configuration
$ sudo nano /sbin/dphys-swapfile
$ sudo nano /etc/dphys-swapfile
# reboot
$ sudo reboot
```

## Installation
**OpenCV 4.5.4**
```shell
$ free -m
# check memory for installation
$ wget https://raw.githubusercontent.com/KoKoLates/rpi-OpenCV-install/main/OpenCV-4-5-4.sh
# get the script from web
$ sudo chmod 775 ./OpenCV-4-5-4.sh
$ ./OpenCV-4-5-4.sh
```

**OpenCV 4.5.5**
```shell
$ free -m
# check memory for installation
$ wget https://raw.githubusercontent.com/KoKoLates/rpi-OpenCV-install/main/OpenCV-4-5-5.sh
# get the script from web
$ sudo chmod 775 ./OpenCV-4-5-5.sh
$ ./OpenCV-4-5-5.sh
```

## Post-Installation
**Finish Checking**<br>

