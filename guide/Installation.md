# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- ```Unlocked bootloader``` - (If not unlocked, Use [this](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md) guide)

- `Installed Custom Recovery` - (If not installed, use [this](TWRPInstallation.md) guide)

-  ```A Working Brain```
#

## ⚠️ Warning
> - _This project at it's Initial Stage, use it at your own risk._
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and copy it to outside tab memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR NABU! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

## _1st Step_ - Partitioning Userdata
- Download [Modded TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
  
- Download [Magisk Manager apk](https://github.com/topjohnwu/Magisk/releases)
  
- Boot into _**Modded TWRP Recovery**_ (either through fastboot command or you can permanently flash it using [this guide](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/blob/main/guide/TWRPInstallation.md) .

- Flash magisk.apk (if not already rooted)

- Now go to terminal and type `partition $$` (replace `$$` with Windows partition size in GB you want, like `partition 60`)
 
- Reboot to system and complete Android and magisk setup.
  
> [!NOTE]
> If it failed to boot into android and back to TWRP, then type `partition` command again and reboot.
#

## _2nd Step_ - Windows Installation

- Download latest [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)
  
- Download [`ARM Windows ESD`](https://arkt-7.github.io/woawin/)

- ESD file should be in the default `Download` folder of your Xiaomi Pad 5.
  
- Reboot to moded TWRP Recovery and flash `WinInstaller.zip`then reboot to system.
  
- Wait till all process completed and Windows setup appear. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times)
  
- Double click on `Android` icon from desktop, to switch in android (from windows) .

- For booting into Windows (from Android), Download and Open [Woa-Helper](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA) app, allow root permission and press `QUICK BOOT TO WINDOWS`
#

## Troubleshooting
#### After clicking on android icon from Windows desktop , if it is booting into twrp recovery :-
> - (this error generally occurs if you are using custom rom and flashed WinInstaller from inactive partition)
> - switch slot in twrp reboot section and reboot to system.
> - Open Woa-Helper app - allow root permission - click on `MOUNT WINDOWS PARTITION` - now click on `backup boot partition` and select `Windows` 

#### By any chance if it failed to boot into windows, do following steps :-
> - reboot to fastboot and flash your android boot.img `fastboot flash boot_ab /path/to/boot.img`
> - You can just reboot into TWRP by using command `fastboot boot /path/to/twrp.img` and restore boot.img from `/sdcard/backup` folder
> - If you are using aosp rom and your twrp installed in secondery partition , type fastboot command `fastboot set_active other` and your android will be back.

> [!TIP]
> You can use [`Nabu Fastboot Tool`](https://arkt-7.github.io/nabu/) to enter all these command for troubleshooting.
