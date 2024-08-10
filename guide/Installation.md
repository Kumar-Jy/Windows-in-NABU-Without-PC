# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

[![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/e0fF1_bKQYE)
## ${\color{blue}Installation\space steps}$ 
- ${\color{darkorange}1st\space Step - Partitioning}$
- ${\color{darkorange}2nd\space Step - Installation}$
  
#
### Prerequisites
- _A Working Brain (most important of all)_
- [_Bootloader must be unlocked, if not, please follow this guide._](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- [_your device must be rooted, if not follow this guide_](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
#
### ${\color{red}[WARNING]}$
> - _This project at it's Experimental Stage, use it at your own risk._
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and copy it to outside phone memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR PHONE! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

### **${\color{darkorange}1st\space Step - Partitioning}$**
${\color{yellow}[Note]}$ :- If your rom not supported custom recovery or if you have not install any custome recovery, do follow this [partitioning guide](partition.md)
- Download and flash this [Moded twrp recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Moded-TWRP-Recovery).
- Open recovery terminal and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60` )
- When finished, reboot to system, if it failed to boot , reboot back to recovery and format userdata then reboot.
- Now finish android setup.
#

### ${\color{darkorange}2nd\space Step - Installation}$
- Download [WinInstaller.zip](https://mega.nz/file/9mFiWSIL#2Kmy_Zg1nh0OvR1wId9my6LYFSXtzv-IAGzHz4ogrt8).
- Download and Install [WOA helper app](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), allow root permission - click on `MOUNT WINDOWS` then click on `BACKUP BOOT IMAGE` and select `WNINDOWS` and `ANDROID` on by one.
- reboot back to moded twrp recovery if u have already installed or repeat [Step 1 to 4](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/blob/main/guide/Partition.md#colordarkorange1stspace-step---partitioning) from Partition guide.
- Now your device will boot in moded twrp recovery.
- Select Wininstaller and flash it.
- Wait till all process completed and Windows setup appear. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times.,)
- For switch to android, double click on Sta.exe from desktop.
> ${\color{yellow}[Note]}$ :- If it failed to boot in windows, it's means your android rom/kernel not supported windows, change it to stock HyperOS ther try.
#

