# Xiaomi Pad 5 TWRP Installation [Without PC]
<img align="right" src="nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

[![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)
## Steps for Recovery Installation
### Prerequisites
- _A Working Brain (most important of all)_
- _Bootloader must be unlocked, if not, follow this_ [guide.](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- Another Android device with OTG cable
- [`TWRP Recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
#

## Setup and Prepration
- Download and install [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) and [`addaway`](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk) in your other android phone
- Download [TWRP Recovery](https://sourceforge.net/projects/xiaomi-pad-5/files/TWRP/) in both the devices (Xiaomi Pad 5 and other Android phone)
#  

<details>
  <summary><strong>Click here for HyperOS/MIUI Rom</strong></summary>
 
### TWRP installation in HyperOS/MIUI Rom
- Reboot Xiaomi Pad 5 into fastboot mode by pressing power button and volume down
- Connect OTG cable in both the devices
- Goto **FASTBOOT** menu
- Tap on blue icon from the bottom right corner
- Type `fastboot boot` and select downloaded `twrp.img` file by tapping ``clip`` icon from the top right corner then press `enter`
- Now your Xiaomi Pad Booted into TWRP recovery
- Goto `Advanced` -
- Click on `Install Recovery Ramdisk` from bottom list
- Select downloaded _**twrp.img**_ from Download folder
- - Swip to flash it.
- Flash `Magisk Manager.apk`
- Now reboot and enjoy!

</details>

----

<details>
  <summary><strong>Click here for AOSP Rom</strong></summary>
  
### TWRP installation in AOSP Rom
- Reboot Xiaomi Pad 5 into fastboot mode by pressing power button and volume down
- Connect OTG cable in both the devices
- Type command `fastboot set_active other`
- Now flash **twrp.img** `fastboot flash boot` and select downloaded `twrp.img` file by tapping ``clip`` icon from the top right corner then press `enter`
- Now reboot and you are in TWRP recovery.
- To switch back into Android from TWRP recovery, must tap on inactive slot before rebooting.
- To boot into TWRP recovery from android rom, download and install boot control app from [this](https://github.com/capntrips/BootControl/releases) and tap on inactive slot.

- </details>
