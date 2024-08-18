# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- ```Unlocked bootloader``` - (If your bootloader is locked and you don't know how to unlock it, use [this](unlock-bootloader.md) guide)

- `Installed Custom Recovery` - (If not installed, use [this]() guide)

-  ```Brain```
#

## ⚠️ Warning
> - _This project at it's Initial Stage, use it at your own risk._
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and copy it to outside phone memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR PHONE! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

## Partitioning Userdata 
- Download [Moded TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Moded-TWRP-Recovery)
  
- Download [Magisk Manager apk](https://github.com/topjohnwu/Magisk/releases/download/v27.0/Magisk-v27.0.apk)
  
- Boot into your existing recovery - click on `Install` - click on `Install Image` from bottom right corner - select _**Moded TWRP Recovery**_ from Download folder - select `Install Recovery Ramdisk` and swip to flash.
  
- Now Flash Magisk Manager apk and reboot back to recovery.
  
- Open recovery terminal and type `restore` , then reboot back to recovery and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60`)

- Open recovery terminal and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60`)
  
- Now reboot and finish android setup.
  
> [!NOTE]
> If it failed to boot in android and reboot to twrp, enter `partition` command again and reboot.
#

## Windows Installation
- Download [`Woa Helper app`](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), install it and allow root permission.
  
- Download [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).
  
- Download [`ARM Windows ESD`](https://worproject.com/esd) (Select - Version:  `11` Build:  `22631.2861` Architecture:  `ARM64` Edition:  `CLIENT` Language:  `select your language`)

- Download [```nabu-drivers```](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/tag/Drivers) (both, Windows ESD and Driver must be in the `Download` folder)
  
- Rename `nabu-drivers.zip` to `Driver.zip` .
  
- reboot to moded TWRP/OrangeFox recovery and flash it.
  
- Wait till all process completed and Windows setup appear. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times)

- Double click on `Android` from desktop, for switching into android (from windows) .

- For booting into Windows (from Android), Open Woa-Helper app and press `QUICK BOOT TO WINDOWS`

> [!NOTE]
> If it failed to boot, it means your android rom/firmware is not supporting ntfs file system, change it to stock HyperOS and try.
#

