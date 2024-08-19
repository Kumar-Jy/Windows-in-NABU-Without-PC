# Xiaomi Pad 5 TWRP Installation [Without PC]
<img align="right" src="nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

[![download](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)
## ${\color{darkorange}Steps\space for\space Partitioning}$ 
### Prerequisites
- _A Working Brain (most important of all)_
- [_Bootloader must be unlocked, if not, please follow this guide._](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- Another Android device with OTG cable
- [`TWRP Recovery`]()
#

## Setup and Prepration
- Download and install [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) and [`addaway`](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk) in your other android device
- Download [TWRP Recovery](https://sourceforge.net/projects/xiaomi-pad-5/files/TWRP/) in both the devices (Xiaomi Pad 5 and other Android phone)
- Download [Mahiro Kernel](https://github.com/utziacre/android_kernel_xiaomi_nabu/releases/tag/20240803) in your Xiaomi Pad 5 (if you are using HyperOS/MIUI rom)
- Download [dtbo_flasher.zip](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Files/dtbo_flasher.zip) (if you are using AOSP rom)
#  

## TWRP installation
- Reboot Xiaomi Pad 5 into fastboot mode by pressing power button and volume down
- Connect OTG cable in both the devices
  
  #### Open Bugjaeger - 
  1. Goto **FASTBOOT** menu
  2. Tap on blue icon from the bottom right corner
  3. Type `fastboot boot` and select downloaded `twrp.img` file by tapping ``clip`` icon from the top right corner then press `enter`
  4. Now your Xiaomi Pad Booted into TWRP recovery

  #### Flashing TWRP (In-Active Slot)
  - flash **dtbo_flasher.zip**. (It will copy dtbo.img from active slot to in-active slot then reboot to bootloader)
  - Repet the step 1 and 2. from above steps.
  - Type `fastboot set_active other`
  - Type `fastboot flash recovery  ` and select downloaded `twrp.img` file by tapping ``clip`` icon from the top right corner then press `enter`
  - Now reboot and you are in TWRP recovery.

> [!NOTE]
> - To witch back into Android from TWRP recovery, must tap on inactive slot before rebooting.
> - To boot into TWRP recovery from android rom, install boot control app from [this](https://github.com/capntrips/BootControl/releases) link and tap on inactive slot.
###
  #### Flashing TWRP (Active Slot - only for HyperOS/MIUI Rom)
  - Flash `Mahiro Kernel.zip`
  - Goto `Advanced` -
  - Click on `Install Recovery Ramdisk` from bottom list
  - Select downloaded _**TWRP Recovery**_ from Download folder
  - Swip to flash it.
  - Flash `Magisk Manager.apk`
  - Now reboot and ! enjoy

#

