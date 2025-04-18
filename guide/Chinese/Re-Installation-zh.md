# 小米平板5 Windows 重新安装【无需电脑】

<img align="right" src="/guide/nabu.png" width="300" alt="Windows 11 运行在小米平板5上">

- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)


## 前置条件
- 已 root（需安装 Magisk 或 KernelSU）
- [`修改后的 TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
- [`Nabu WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)
- 下载普通 [`Windows ARM ESD`](https://arkt-7.github.io/woawin/) 或 [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)


## 重新安装步骤

- 下载最新版 [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)。
- 下载普通 [`Windows ARM ESD`](https://arkt-7.github.io/woawin/) 或 [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)。
- 将 Windows ESD/wim 文件和 WinInstaller.zip 放入平板的 `Download` 文件夹，或 U 盘的 `WOA` 文件夹。（支持 U 盘安装）
- 启动到修改后的 TWRP，进入“高级”>“终端”，输入命令 `format`（仅格式化 win 和 esp 分区）。
- 返回 TWRP 主界面，选择“安装”> 选择 WinInstaller.zip，滑动刷入。
- 刷入完成后重启系统，等待所有过程完成并出现 Windows 安装界面。（大约 10-15 分钟，期间会自动重启 1-2 次）
---

## 双系统切换

- 在 Windows 桌面双击 `Android` 图标可切换回安卓。
- 安卓下安装并打开 [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases/tag/APK)，授权 root 后点击 `QUICK BOOT TO WINDOWS` 可切换回 Windows。
