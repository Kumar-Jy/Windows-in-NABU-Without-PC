# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

[![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/e0fF1_bKQYE)
## ${\color{blue}Steps\space for\space Installation}$ 
- ${\color{darkorange}1st\space Step - Partitioning}$
- ${\color{darkorange}2nd\space Step - Installation}$
  
#
### Prerequisites
- _A Working Brain (most important of all)_
- [_Bootloader must be unlocked, if not, please follow this guide._](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- [_your device must be rooted, if not follow this guide_](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
#
### ${\color{red}[WARNING]}$
> - _All your data will be erased ! Back up now if needed._
> - _Backup Important Partition (Boot, EFS, Modem and Persist) and copy it to outside phone memory_
> - _Do not flash/run the same file/command twice unless specified._
> - _Follow step by step guide, don't jump or skip any step._
> - _YOU CAN BREAK YOUR DEVICE WITH THE COMMANDS/FILE BELOW IF YOU DO THEM WRONG!!!_
> - _DO NOT REBOOT YOUR PHONE! If you think you made a mistake, ask for help in the [Telegram chat](https://t.me/WinInstaller)._
#

### **${\color{darkorange}1st\space Step - Partitioning}$**
${\color{yellow}[Note]}$ :- If your rom not supported custom recovery or if you have not install any custome recovery, do follow this [partitioning guide](partition.md)
- Download [boot-backup-creator.zip](boot-backup-creator.zip) it will backup android boot.img to cust partition.
- Download and flash this [Moded twrp recovery](https://mega.nz/file/czUjGI4Z#mrzauyw4Pa99bHfX16BD5NH9RUnxf3K9meYVn4EoFGo). through your installed recovery.
- Flash boot-backup.zip, this will copy your android boot.img to cust partition, so you can reboot back to android. [you can manually do this]
- Open recovery terminal and type `partition $` (replace $ with Windows partition size in GB you want, like `partition 60` )
- When finished, reboot to system, if it failed to boot , reboot back to recovery and format userdata then reboot.
- Now finish android setup.
#

### ${\color{darkorange}2nd\space Step - Installation}$
- Download [WinInstaller.zip](https://mega.nz/file/9mFiWSIL#2Kmy_Zg1nh0OvR1wId9my6LYFSXtzv-IAGzHz4ogrt8).
- reboot back to moded twrp recovery if u have already installed or repeat [Step 1 to 4](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/edit/main/guide/Installation.md#colordarkorange1stspace-step---partitioning) from Partition guide.
- Now your device will boot in moded twrp recovery.
- Select Wininstaller and flash it.
- Wait till all process completed and Windows setup appear. (It takes up to 15 minutes and eventually reboot 2 or 3 times.,)
- For switch to android, double click on Sta.exe on desktop.
#

