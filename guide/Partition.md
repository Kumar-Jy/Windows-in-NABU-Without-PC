# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

[![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/)
## ${\color{darkorange}Steps\space for\space Partitioning}$ 
### Prerequisites
- _A Working Brain (most important of all)_
- [_Bootloader must be unlocked, if not, please follow this guide._](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- [_your device must be rooted, if not follow this guide_](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
#
### ${\color{red}[WARNING]}$
> - _This project is at it's experiment stage, use it at your own risk._
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and save it to cloud drive/outside phone memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR PHONE! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

### **${\color{darkorange}1st\space Step - Partitioning}$**
- Open android file manager, Creat a new folder and rename it to `UEFI`
- Download [boot-backup-creator.zip](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Files/boot-backup.zip)it will backup android boot.img to cust partition.
- Download [Moded twrp recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Moded-TWRP-Recovery) and place it to `UEFI` folder.
- Download and Install [Woa Helper app](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), open it, allow root permission, then click on `BACKUP BOOT` and select `ANDROID`.
- Now press `QUICK BOOT TO WINDOWS` and your device will boot into moded twrp recovery.
- Flash boot-backup.zip, this will copy your android boot.img to cust partition, so you can reboot back to android. [you can manually do this]
- Open recovery terminal and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60` )
- When finished, flash boot.img from `cust` folder and reboot to system. (If it booted to MIUI recovery just select factory reset and reboot)
- Now finish android setup.
#
### [2nd Step - Installation](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/blob/main/guide/Installation.md#colordarkorange2ndspace-step---installation)
