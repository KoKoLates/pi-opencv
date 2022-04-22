# Qt5 Installation



``` shell
$ sudo apt-get update
$ sudo apt-get upgrade

# Buster OS (Debian 10)
$ sudo apt-get install qt5-default
$ sudo apt-get install qtcreator
$ sudo apt-get install qtdeclarative5-dev

# Bullseye OS
$ sudo apt-get install qtcreator
$ sudo apt-get install qtdeclarative5-dev
$ sudo apt-get install qtbase5-dev qtchooser
$ sudo apt-get install qt5-qmake qtbase5-dev-tools
```
## Warning
If you encouter the warning and error like
```
- cannot register existing type 'GtkWidget'
- g_type_add_interface_static: assertion 'G_TYPE_IS_INSTANTIATABLE (instance_type)' failed
- g_type_register_static: assertion 'parent_type > 0' failed
```

It's probabily because the wrong setting of GTK toolkit. So, open `/etc/xdg/qt5ct/qt5ct.conf` to fix it.

```shell
# edit qt5ct.conf on a Raspberry Pi
$ sudo nano /etc/xdg/qt5ct/qt5ct.conf

# alter the gtk2 to gtk3
#  <Ctrl> + <X>, <Y> and <Enter> to save and leave
```