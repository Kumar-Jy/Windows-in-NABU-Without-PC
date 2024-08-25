# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- ```Unlocked bootloader``` - (If your bootloader is locked and you don't know how to unlock it, use [this](unlock-bootloader.md) guide)

- `Installed Custom Recovery` - (If not installed, use [this](TWRPInstallation.md) guide)

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
  
- Boot into your existing recovery - goto `Advanced` - click on `Install Recovery Ramdisk` from bottom list - select _**Moded TWRP Recovery**_ from Download folder and swip to flash it.
  
- Now Flash Magisk Manager apk and reboot back to recovery.
  
- Open recovery terminal and type `restore` , then reboot back to recovery and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60`)

  
- Now reboot and finish android setup.
  
> [!NOTE]
> If it failed to boot in android and back to twrp, enter `partition` command again and reboot.
#

## Windows Installation
- Download [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).
  
- Download [`ARM Windows ESD`](https://worproject.com/esd) (Select - Version:  `11` Build:  `22631.2861` Architecture:  `ARM64` Edition:  `CLIENT` Language:  `select your language`)

- ESD file should be in the default `Download` folder of your Xiaomi Pad 5.
  
- Reboot to moded TWRP Recovery and flash it.
  
- Wait till all process completed and Windows setup appear. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times)
#

## Dual-Boot setup
  
- Double click on `Android` icon from desktop, to switch in android (from windows) .

- For booting into Windows (from Android), Open Woa-Helper app and press `QUICK BOOT TO WINDOWS`

> [!NOTE]
> You can just boot into twrp and flash/sideload WinInstaller, but it may cause installation error in some custom rom, so better to install twrp permanently.
#

## Troubleshooting
 > #### If after clicking on android icon from Windows desktop , if it is booting into twrp recovery, do the following setups :-
> - (this error generally occurs if you are using custom rom and flashed WinInstaller from inactive paerition)
 > - switch slot in twrp reboot section and reboot to system.
> - Open Woa-Helper app - allow root permission - click on `MOUNT WINDOWS PARTITION` - now click on `backup boot partition` and select `Windows` 

> #### By any chance if it failed to boot into windows, do following steps :-
> - reboot to fastboot and flash your android boot.img `fastboot flash boot_ab /path/to/boot.img`
> - You can just reboot into TWRP by using command `fastboot boot /path/to/twrp.img` and restore boot.img from `/sdcard/backup` folder

> - If you are using aosp rom and your twrp installed in secondery partition , type fastboot command `fastboot set_active other` and your android will be back.

> - You can use [`bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) / app to enter all these command for troubleshooting.
