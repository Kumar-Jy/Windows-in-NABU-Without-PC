# Xiaomi Pad 5 TWRP Installation [Without PC]
<img align="right" src="nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

Install TWRP on your Xiaomi Pad 5 using another Android phone (no PC required).  
This method works for both **AOSP/Custom ROMs** and **Stock MIUI/HyperOS**.

## What You Need (For All Setups)

_On your **other Android phone**:_
- Install:
  - [Bugjaeger](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share)
  - [AdAway APK (v6.1.3)](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk)

_On **both devices (Pad 5 + other phone)**:_
- Download the correct TWRP file:
  - **For AOSP ROMs** → [NABU-TWRP-AOSP.img](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Modded-TWRP-Recovery/Nabu-TWRP-AOSP.img)
  - **For MIUI/HyperOS** → [NABU-TWRP-HOS.img](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Modded-TWRP-Recovery/Nabu-TWRP-V4-HOS.img)
> For Root download: [Magisk.apk](https://github.com/topjohnwu/Magisk/releases/download/v29.0/Magisk-v29.0.apk) in your Pad 5 and rename it to ``magisk.zip``

#
<details>
<summary> Setup for <strong>Stock MIUI / HyperOS</strong> (Tap to Expand)</summary>

### Steps:
1. **Boot Pad 5 into Fastboot mode**  
   → Hold Power + Volume Down
2. **Connect Pad 5 to other Android phone** using OTG cable
3. **Open Bugjaeger** on the other phone → Go to **Fastboot**
4. **Boot into TWRP**:
   - Type: `fastboot boot`  
   - Select `NABU-TWRP-HOS.img`
5. **In TWRP**:
   - Tap `Advanced` → `Flash Recovery Ramdisk`  
   - Select the same TWRP `.img` → Swipe to flash
6. (Optional) **Root**:
   - Go to `Install` → Select `Magisk.zip` → Swipe to flash

</details>

#
<details>
<summary> Setup for <strong>AOSP / Custom ROMs</strong> (Tap to Expand)</summary>

> Also download: [empty_vendor_boot.img](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Files/empty_vendor_boot.img) in your Android Phone

### Steps:

1. **Boot Pad 5 into Fastboot mode**  
   → Hold Power + Volume Down

2. **Connect Pad 5 to other Android phone** using OTG cable

3. **Open Bugjaeger** on the other phone → Go to **Fastboot**

4. **Flash vendor boot**:
   - Type: `fastboot flash vendor_boot_ab `  
   - Select `empty_vendor_boot.img` and flash
5. **Boot into TWRP**:
   - Type: `fastboot boot`  
   - Select `NABU-TWRP-AOSP.img`
6. **In TWRP**:
   - Tap `Advanced` → `Flash Recovery Ramdisk`  
   - Select the same TWRP `.img` → Swipe to flash
7. (Optional) **Root**:
   - Go to `Install` → Select `Magisk.zip` → Swipe to flash

</details>

#

## Done!

You now have TWRP installed on your Xiaomi Pad 5.  
Need help? message in [_TELEGRAM_](https://t.me/wininstaller).

