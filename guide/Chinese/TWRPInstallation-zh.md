# 小米平板5 TWRP 安装指南【无需电脑】
<img align="right" src="/guide/nabu.png" width="400" alt="Windows 11 运行在小米平板5上">

[![视频教程](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)

## 前置条件
- 已解锁引导加载程序（如未解锁请参考[此指南](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md)）
- 另一台安卓设备和 OTG 线
- [`修改后的 TWRP Recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)

## 安装步骤

- 在另一台安卓手机上安装 [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share)。
- 下载 TWRP 镜像到两台设备。
- 平板关机，按住电源键和音量减进入 Fastboot 模式。
- 用 OTG 线连接两台设备。
- 在 Bugjaeger 中选择 fastboot，输入 `fastboot boot`，选择 TWRP 镜像，回车。
- 平板进入 TWRP 后，选择“高级”-“安装 Recovery Ramdisk”，选择 TWRP 镜像滑动刷入。
- 可选：刷入 Magisk 获取 root。
- 重启系统，完成安装。

> AOSP ROM 用户请参考 [BootControl](https://github.com/capntrips/BootControl/releases) 切换分区。
