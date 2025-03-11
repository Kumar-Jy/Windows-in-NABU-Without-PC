# Xiaomi Pad 5 Windows Installation [Without PC]
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- ```Unlocked bootloader``` - (If not unlocked, Use [this](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md) guide)

- `Other Android Devices/PC for booting into modded recovery` - (or you can use [this](TWRPInstallation.md) guide to install twrp permanently)

- `USB otg cable for connecting your Android phone with Xiaomi Pad 5`

- `Modded recovery for creating partition and Installing Windows`

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

## 1st Step :- Partitioning Userdata
<details>
  <summary><strong>Click here for Partitioning</strong></summary> 
  
- Download [Modded TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery) to both your Android device and Xiaomi Pad 5.

- Download the [Magisk Manager APK](https://github.com/topjohnwu/Magisk/releases) to your Xiaomi Pad 5.

- Reboot your Pad 5 into Fastboot mode by pressing and holding the volume down and power buttons.

- Connect your Android phone/PC to your Pad 5 using a USB OTG cable, and open the website [https://arkt-7.github.io/nabu/](https://arkt-7.github.io/nabu/) in any browser (Chrome is recommended).

- Click on `Connect Device Fastboot` and select `Android`. It will connect and display your Pad 5’s information.

- Now, go to `Boot Any Image`, select `modded-twrp.img`, tap on `Boot`, and TWRP should open on your Pad 5.

- If it fails, you can use the command `fastboot boot modded-twrp.img` through platform-tools on a PC or through the Bugjaeger or Termux app on Android to boot your Pad 5 into the modded TWRP recovery.

- Now, disconnect the USB OTG cable. Go to `Install` in TWRP, select `magisk.apk`, and swipe to flash (skip this step if your device is already rooted).

- Now, on the main screen, go to `Advanced` > `Terminal` and type `partition $` (replace `$` with the desired partition size in GB, like `partition 60`).

- Reboot to the system and complete the Android setup.

- Download and install [Magisk.apk](https://github.com/topjohnwu/Magisk/releases), open it, and reboot if prompted.

</details>

---

## 2nd Step: Windows Installation
<details>
  <summary><strong>Click here for Installation</strong></summary>

- Download the latest [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).

- Download a normal [`Windows ARM ESD`](https://arkt-7.github.io/woawin/), or you can download [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk).

- Place the ESD file in the `Download` folder on your Xiaomi Pad 5 or in the `WOA` folder on a USB drive. (Yes, you can also install it using a USB drive.)

- Reboot to the Modded TWRP, go to Install, select `WinInstaller.zip`, and swipe to flash. Once finished, reboot to the system.

- Wait until all processes are completed, and the Windows setup appears. (This may take a maximum of 10 to 15 minutes and will eventually reboot 2 or 3 times.)

</details>

---
## 3rd Step :- Dualboot Setup:
<details>
  <summary><strong>Click here for Dualboot Setup</strong></summary>
  
- Double-click the `Android` icon on the desktop to switch to Android (from Windows).
- To boot from Android to Windows, install the [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases) from the Download folder, allow root permissions, and press `QUICK BOOT TO WINDOWS`.

</details>

---

## Miscellaneous:
<details>
  <summary><strong>Click here for Miscellaneous</strong></summary>
  
- Locate `Toolbox` folder in the `C:\` drive. It contains various useful files and folders.
- To install Microsoft Office, connect to the internet and run `Office Tool Plus.exe` from the `office_tool` folder.
- For AtlasOS, unzip and run `AMEWizard`, select `AtlasPlaybook.apbx`, and follow the instructions.
- For Windows and Office activation, connect to the internet run `winactivator.bat` as an administrator.

</details>

## Troubleshooting
<details>
  <summary><strong>Click here for Troubleshooting</strong></summary>

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

</details>
---

