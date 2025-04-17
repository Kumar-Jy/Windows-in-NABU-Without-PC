# 小米平板5 Windows 安装指南【无需电脑】

<img align="right" src="/guide/nabu.png" width="425" alt="Windows 11 运行在小米平板5上">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)

## 前置条件
- 已解锁引导加载程序（如未解锁，请参考[此指南](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md)）
- 另一台安卓设备或电脑（用于进入 TWRP）
- USB OTG 线
- [修改后的TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
- [Magisk 管理器 APK](https://github.com/topjohnwu/Magisk/releases)
- **一个清醒的大脑**

## ⚠️ 警告
- _本项目处于早期阶段，风险自负。_
- _所有数据将被清除，请提前备份。_
- _请严格按照步骤操作，勿跳步。_
- _操作失误可能导致设备损坏！_

---

## 第一步：分区与 Root
<details>
  <summary><strong>点击展开分区指南</strong></summary>

- 同时按住电源键和音量减进入 Fastboot 模式。
- 用 OTG 线连接安卓手机/电脑与平板，通过 [Bugjaeger](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) 或 [网页版工具](https://arkt-7.github.io/nabu/) 启动 TWRP。
- 进入 TWRP 后，选择“高级”-“安装 Recovery Ramdisk”，选择下载的 TWRP 镜像并滑动安装。
- 进入“安装”，选择 `magisk.zip` 并滑动安装（如已 root 可跳过）。
- TWRP 主界面 > “高级” > “终端”，输入 `partition $`（$ 替换为分区大小，如 `partition 60`）。
- 重启系统，完成安卓设置，安装 Magisk。

</details>

---

## 第二步：安装 Windows
<details>
  <summary><strong>点击展开安装步骤</strong></summary>

- 下载最新 [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)。
- 下载 [`Windows ARM ESD`](https://arkt-7.github.io/woawin/) 或 [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)。
- 将 ESD 文件放入平板 Download 文件夹或 U 盘 WOA 文件夹。
- 重启进入 TWRP，选择“安装”，刷入 `WinInstaller.zip`，完成后重启。
- 等待 Windows 安装界面出现（约 10-15 分钟，期间会自动重启数次）。

</details>

---

## 第三步：双系统设置
<details>
  <summary><strong>点击展开双系统设置</strong></summary>

- 在 Windows 桌面双击 `Android` 图标可切换回安卓。
- 安卓下安装 [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases)，授权 root 后点击 `QUICK BOOT TO WINDOWS` 可切换回 Windows。

</details>

---

## 常见问题
- 见 [常见问题与故障排查](troubleshooting-zh.md)

---