# 小米平板5 TWRP 安装指南【无需电脑】
<img align="right" src="/guide/nabu.png" width="400" alt="Windows 11 运行在小米平板5上">

[![视频教程](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)

## 前置条件
- 已解锁引导加载程序（如未解锁请参考[此指南](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)）
- 另一台安卓设备和 OTG 线
- [`修改后的 TWRP Recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)

---

## 安装与准备
- 在另一台安卓手机上安装 [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share)（可选安装 [`AdAway`](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk)）
- 在平板和另一台安卓手机上都下载好 [TWRP Recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)

---

<details>
  <summary><strong>点击展开 HyperOS/MIUI ROM 安装方法</strong></summary>

### HyperOS/MIUI ROM 下安装 TWRP
- 平板关机，按住电源键和音量减进入 Fastboot 模式
- 用 OTG 线连接两台设备
- 在 Bugjaeger 选择 **FASTBOOT** 菜单
- 点击右下角蓝色图标
- 输入 `fastboot boot`，点击右上角“回形针”图标选择下载的 `twrp.img` 文件，然后回车
- 平板会启动进入 TWRP Recovery
- 进入 `高级` - 选择底部的 `安装 Recovery Ramdisk`
- 选择下载的 _**twrp.img**_，滑动刷入
- 可选：刷入 Magisk 获取 root
- 重启系统，完成安装

</details>

----

<details>
  <summary><strong>点击展开 AOSP ROM 安装方法</strong></summary>

### AOSP ROM 下安装 TWRP
- 平板关机，按住电源键和音量减进入 Fastboot 模式
- 用 OTG 线连接两台设备
- 输入命令 `fastboot set_active other`
- 刷入 **twrp.img**：输入 `fastboot flash boot`，点击右上角“回形针”图标选择下载的 `twrp.img` 文件，然后回车
- 重启后即可进入 TWRP Recovery
- 若需从 TWRP 切回安卓，重启前请务必点击切换到非活动分区
- 若需从安卓启动到 TWRP，可安装 [BootControl](https://github.com/capntrips/BootControl/releases) 并点击切换到非活动分区

</details>
