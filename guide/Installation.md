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

---

## Partitioning Userdata
- Download [Modded TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
  
- Download [Magisk Manager apk](https://github.com/topjohnwu/Magisk/releases)
  
- Boot into _**Modded TWRP Recovery**_ (either through the fastboot command or you can permanently flash it using [this guide](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/blob/main/guide/TWRPInstallation.md)).

- Flash magisk.apk (if not already rooted).

- Now go to the terminal and type `partition $$` (replace `$$` with the Windows partition size in GB you want, like `partition 60`).
 
- Reboot to the system and complete the Android and Magisk setup.
  
> [!NOTE]
> If it fails to boot into Android and returns to TWRP, then type the `partition` command again and reboot.

---

## Windows Installation

- Download the latest [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).
  
- Download [`ARM Windows ESD`](https://arkt-7.github.io/woawin/).

- Place the ESD file in the Download folder on your Xiaomi Pad 5 or in the WOA folder on a PENDRIVE. (Yes, now you can also flash it through PENDRIVE.)
  
- Reboot to the Modded TWRP Recovery and flash `WinInstaller.zip`, then reboot to the system.
  
- Wait until all processes are completed and the Windows setup appears. (It will take 10 to 15 minutes and eventually reboot 2 or 3 times.)

---

#### Dualboot Setup:
- Double-click the `Android` icon on the desktop to switch to Android (from Windows).
- To boot from Android to Windows, install the [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases/tag/APK) from the Download folder, allow root permissions, and press `QUICK BOOT TO WINDOWS`.

#### Miscellaneous:
- Locate `Toolbox.zip` in the `C:\` drive. It contains various useful files and folders.
- To install Microsoft Office, connect to the internet and run `Office Tool Plus.exe` from the `office_tool` folder.
- For AtlasOS, unzip and run `AMEWizard`, select `AtlasPlaybook.apbx`, and follow the instructions.
- For Windows and Office activation, connect to the internet, unzip `Toolbox.zip` from the C:\ drive, and run `winactivator.bat` as an administrator.
- You can also install miscellaneous frameworks from the `FRAMEWORK` folder.

---

## Troubleshooting

#### After clicking on the Android icon from the Windows desktop, if it boots into TWRP recovery:
> - (This error generally occurs if you are using a custom ROM and flashed WinInstaller from an inactive partition.)
> - Switch slots in TWRP reboot section and reboot to the system.
> - Open the Woa-Helper app, allow root permission, click on `MOUNT WINDOWS PARTITION`, then click on `backup boot partition` and select `Windows`.

#### If it fails to boot into Windows, do the following steps:
> - Reboot to fastboot and flash your Android boot.img: `fastboot flash boot_ab /path/to/boot.img`.
> - You can just reboot into TWRP by using the command `fastboot boot /path/to/twrp.img` and restore boot.img from the `/sdcard/backup` folder.
> - If you are using an AOSP ROM and TWRP is installed in the secondary partition, type the fastboot command `fastboot set_active other` and your Android will be back.

> [!TIP]
> You can use [`Nabu Fastboot Tool`](https://arkt-7.github.io/nabu/) to enter all these commands for troubleshooting.
> 
> Locate the `backup` folder on your device's internal storage and save it to a safe place (such as Google Drive).

---

