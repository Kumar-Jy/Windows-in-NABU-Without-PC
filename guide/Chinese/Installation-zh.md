# 小米平板5 Windows 安装指南【无需电脑】

<img align="right" src="/guide/nabu.png" width="425" alt="Windows 11 运行在小米平板5上">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)


## 前置条件
- 已解锁引导加载程序 - 如果未解锁，请参考[此指南](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md)。

- 其他安卓设备/电脑 - ```用于启动修改版 recovery```

- USB OTG 数据线 - ```用于连接你的安卓手机/电脑与小米平板5```

- [Platform-tools 工具包](https://dl.google.com/android/repository/platform-tools-latest-windows.zip) - ```如使用电脑，请下载并解压到 C:\ 盘```

- [修改版 TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery) - ```下载到你的安卓设备/电脑和小米平板5```

- [Magisk Manager APK](https://github.com/topjohnwu/Magisk/releases) - ```下载到小米平板5并重命名为 magisk.zip```

-  ```一颗清醒的头脑```


## ⚠️ 警告
> - _本项目处于初期阶段，风险自负。_
> - _所有数据将被清除！如有需要请提前备份。_
> - _请备份重要分区（Boot、EFS、Modem 和 Persist），并复制到平板外部存储。_
> - _除非特别说明，请勿重复刷写/运行同一文件或命令。_
> - _请严格按照步骤操作，不要跳步或省略。_
> - _如果操作错误，可能会导致设备变砖！！！_
> - _不要随意重启你的 NABU！如有疑问请在 [Telegram 群组](https://t.me/WinInstaller) 求助。_


---

## 第一步：Root 并分区 UserData
<details>
  <summary><strong>点击展开分区指南</strong></summary> 
  
- 同时按住电源键和音量减键，重启你的小米平板5进入 Fastboot 模式。

- 使用 USB OTG 数据线将小米平板5与安卓手机/电脑连接，通过 [Bugjaeger app](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share)、[termux](https://github.com/Kumar-Jy/trrtool) 或 [网页版工具](https://arkt-7.github.io/nabu/)（建议用 Chrome 打开），使用命令 `fastboot boot modded-twrp-nabu.img` 启动 TWRP。

- 进入 TWRP 后，前往“高级” - “安装 Recovery Ramdisk” - 选择下载文件夹中的 Modded-Twrp.img，滑动安装。

- 然后进入“安装”，选择下载文件夹中的 `magisk.zip`，滑动安装（如果你的设备已用 KSU 获取 root，可跳过此步）。

- 回到 TWRP 主界面 > “高级” > “终端”，输入 `partition $`（将 `$` 替换为你想要的分区大小，单位为 GB，如 `partition 60`），回车。

- 重启进入系统，完成安卓设置，下载并安装 [Magisk.apk](https://github.com/topjohnwu/Magisk/releases)，如有提示请重启。

</details>

---

## 第二步：安装 Windows
<details>
  <summary><strong>点击展开安装步骤</strong></summary>

- 下载最新版 [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller)。

- 下载 [`Windows ARM ESD`](https://arkt-7.github.io/woawin/)，或下载 [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk)。

- 将 ESD 文件放到小米平板5的 `Download` 文件夹，或 U 盘的 `WOA` 文件夹（也支持用 U 盘安装）。

- 重启进入修改版 TWRP，进入“安装”，选择 `WinInstaller.zip`，滑动刷入。完成后重启系统。

- 等待所有过程完成，直到出现 Windows 设置界面（大约需要 10-15 分钟，期间会自动重启 2-3 次）。

</details>

---

## 第三步：双系统设置
<details>
  <summary><strong>点击展开双系统设置</strong></summary>

- 在 Windows 桌面双击 `Android` 图标可切换回安卓。
- 安卓下安装 [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases)，授权 root 后点击 `QUICK BOOT TO WINDOWS` 可切换回 Windows。

</details>

---

## 其他说明
<details>
  <summary><strong>点击展开其他说明</strong></summary>

- C 盘有 `Toolbox` 文件夹，内含常用工具和文件。
- 安装 Office：联网后运行 `office_tool` 文件夹下的 `Office Tool Plus.exe`。
- 安装 AtlasOS：解压并运行 `AMEWizard`，选择 `AtlasPlaybook.apbx` 并按提示操作。
- 激活 Windows/Office：联网后以管理员身份运行 `winactivator.bat`。

</details>

## 常见问题
- 见 [常见问题与故障排查](troubleshooting-zh.md)

<details>
  <summary><strong>点击展开故障排查</strong></summary>

#### 如果点击 Windows 桌面 Android 图标后进入 TWRP：
- （通常是因为你在未激活的分区刷入了 WinInstaller，或使用了自定义 ROM。）
- 在 TWRP 的重启菜单切换分区（slot）后重启系统。
- 打开 Woa-Helper，授权 root，点击 `MOUNT WINDOWS PARTITION`，再点击 `backup boot partition` 并选择 Windows。

#### 无法进入 Windows 时可尝试：
- 重启到 fastboot，刷入安卓 boot.img：`fastboot flash boot_ab /path/to/boot.img`
- 也可用 `fastboot boot /path/to/twrp.img` 启动 TWRP，从 `/sdcard/backup` 恢复 boot.img。
- 如用 AOSP ROM 且 TWRP 安装在副分区，可用 `fastboot set_active other` 恢复安卓。

> [!提示]
> 可用 [`Nabu Fastboot Tool`](https://arkt-7.github.io/nabu/) 执行上述命令进行故障排查。
> 
> 请将设备内存中的 `backup` 文件夹保存到安全位置（如云盘）。

</details>
---