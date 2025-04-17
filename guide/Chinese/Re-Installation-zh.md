# 小米平板5 Windows 重新安装【无需电脑】

<img align="right" src="/guide/nabu.png" width="300" alt="Windows 11 运行在小米平板5上">

- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)

## 前置条件
- 已 root（Magisk/KernelSU）
- [`修改后的TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
- [`Nabu WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)
- [`Windows ARM ESD`](https://arkt-7.github.io/woawin/) 或 [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)

## 重新安装步骤

1. 下载最新版 [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)。
2. 下载 Windows ARM ESD 文件。
3. 将 ESD 和 WinInstaller.zip 放入平板 Download 文件夹或 U 盘 WOA 文件夹。
4. 启动到 修改后的TWRP，进入“高级”>“终端”，输入 `format`（仅格式化 win 和 esp 分区）。
5. 返回 TWRP 主界面，选择“安装”>`WinInstaller.zip`，滑动刷入。
6. 刷入完成后重启，等待 Windows 安装界面出现（约 10-15 分钟，期间会自动重启 1-2 次）。

## 双系统切换

- 在 Windows 桌面双击 `Android` 图标可切换回安卓。
- 安卓下安装并打开 [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases/tag/APK)，授权 root 后点击 `QUICK BOOT TO WINDOWS` 可切换回 Windows。