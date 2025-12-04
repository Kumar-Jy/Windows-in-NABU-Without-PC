# Xiaomi Pad 5 Backup and restore Windows [Without PC]
<img align="right" src="nabu.png" width="300" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- Must be rooted with Magisk/KernelSU installed
- [`Modified TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
  
  
## Backup Windows
- If you are in windows, must return to Android either through Android shortcut from desktop or by flashing stock boot.img through fastboot `fastboot flash boot_ab /path/to/boot.img`
  
- Boot to the Modded TWRP, Goto`Advance` **>** `Terminal` and type command `backupwin` - press enter or type the custom path if you want to backup in any other usb stick.
  
- Wait until backup done.

---
 ## Restore Windows
 
- make sure you already have win and esp partition.
 
- Download [NABU_SB_NSB_boot_switcher_V4.zip]('https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Files/NABU_SB_NSB_boot_switcher_V4.zip)
 
- Reboot to Modded-TWRP-Recovery goto`Advance` **>** `Terminal` and type command `restorewin` - press enter or type the custom path if you have copied the winbackup.wim at any other location.

- Flash/Sideload `NABU_SB_NSB_boot_switcher_V4.zip`

- Reboot if flashing done.
#
