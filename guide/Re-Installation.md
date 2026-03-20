# Xiaomi Pad 5 Windows Re-Installation

- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)


---
### Notes:-
- If your pad 5 is in windows, then you must need it to return to Android either through Android shortcut from desktop or by flashing stock boot.img through fastboot `fastboot flash boot_ab /path/to/boot.img`

### Files Needed:-
- Modified TWRP - [`Modified TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)

- Installer Zip - Latest [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).
  
- Windows Image - [`Windows ARM ESD`](https://arkt-7.github.io/woawin/) or you can download [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)

### Installation Steps :-
- Copy the Windows ESD/WIM/ISO file and wininstaller.zip in the `Download` folder on your Xiaomi Pad 5
  Or in the `WOA` folder in a PENDRIVE. (Yes, you can also install it using PENDRIVE.)
  
- Boot to the Modded TWRP `fastboot boot /path/to/modded-twrp.img`
  
- In TWRP Goto`Advance` **>** `Terminal` and type command `format`. (It will format only win and esp partition).

- Now back to TWRP home screen - INSTALL > select WinInstaller.zip and swip to flash.
  
- Reboot to system if finished and Wait until all processes are completed and the Windows setup appears. (It will take 10 to 15 minutes and eventually reboot 1 or 2 times.)

---
 ## Dualboot Setup
 
- Double click on `Android` icon from desktop, to switch back in android (from windows) .

- For booting into Windows (from Android), Download and Open [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases/tag/APK) app, allow root permission and press `QUICK BOOT TO WINDOWS`
#
