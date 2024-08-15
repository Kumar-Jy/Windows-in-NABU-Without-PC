# Xiaomi Pad 5 Windows Installation [Without PC] (in-progress)
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
## ${\color{blue}Installation\space steps}$ 
- ${\color{darkorange}1st\space Step - Partitioning}$
- ${\color{darkorange}2nd\space Step - Installation}$
  
#
### Prerequisites
- _A Working Brain (most important of all)_
- _Bootloader must be unlocked, if not, please follow this_ [_guide._](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- _your device must be rooted, and TWRP Recovery Installed, if not, follow this_ [_guide_](https://t.me/xiaomipad5global/179893)
- [```ARM Windows ESD```](https://worproject.com/esd) (Select - Version:  ```11``` Build:  ```22631.2861``` Architecture:  ```ARM64``` Edition:  ```CLIENT``` Language:  ```select your language```)
    
- [```Drivers```](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/tag/Drivers)

#
### ${\color{red}[WARNING]}$
> - _This project at it's Initial Stage, use it at your own risk._
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and copy it to outside phone memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR PHONE! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

### **${\color{darkorange}1st\space Step - Partitioning}$** 
- Download [Moded OrangeFox recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Moded-TWRP-Recovery)
  
- Download [Magisk Manager apk](https://github.com/topjohnwu/Magisk/releases/download/v27.0/Magisk-v27.0.apk)
  
- Boot into your existing recovery - click on `Install` - click on `Install Image` - select _**Moded OrangeFox Recovery**_ - select `Install Recovery Ramdisk` and swip to flash.
  
- Now Flash Magisk Manager apk and reboot back to recovery.
  
- Open recovery terminal and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60`)
  
- Now reboot and finish android setup.
  
> Note :- If you are not familiar with Orangefox Recovery, you can use **Moded TWRP Recovery** as well.
#

### **${\color{darkorange}2nd\space Step - Installation}$**
- Download [Woa Helper app](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), install it and allow root permission.
  
- Download [WinInstaller.zip](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).
  
- Download [Windows ESD Image](https://worproject.com/esd) and [nabu-drivers](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/tag/Drivers) (it must be in the `Download` folder)
  
- Rename `nabu-drivers.zip` to `Driver.zip` (this is necessary else WinInstaller will not detect it)
  
- reboot to moded TWRP/OrangeFox recovery and flash it.
  
- Wait till all process completed and Windows setup appear. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times)

- Double click on `Android` from desktop, for switching into android (from windows) .

- For booting into Windows (from Android), Open Woa-Helper app and press `QUICK BOOT TO WINDOWS`

> ${\color{yellow}[Note]}$ :- If it failed to boot in windows, it means your android rom/kernel not supported windows, change it to stock HyperOS ther try.
#

