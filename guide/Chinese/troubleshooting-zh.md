# 常见问题与故障排查

> 以下是常见问题及解决方法

---

### 声音和旋转不工作
- 重启到 recovery 并刷入最新 [UEFI](https://github.com/n00b69/woa-beryllium/releases/tag/UEFI)

### 安装失败
- 请确保严格按照官方说明操作，并且手机存储空间不少于 6GB。

### 休眠后触摸失效
- 重启设备，目前暂无永久解决办法。

### 安卓下无法写入 Windows 分区
- 这是因为 Windows 关机而非重启导致。解决方法：在 Windows 内点击“重启”，屏幕熄灭后进入 TWRP，再启动安卓。
- 或在 Windows 内禁用休眠（可用[此脚本](https://github.com/n00b69/woa-beryllium/releases/tag/1.0)）。
- 如果已设置 Switch to Android 应用，也可直接用它切换到安卓。

### USB 不工作
- 需开启 USB host 模式，参考[此工具](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/download/USBHost/USB.Host.Mode.Control.V4.0.vbs)。
- **警告：**如使用带电源的 USB HUB，务必关闭 host 模式，否则可能损坏设备。如果不使用带电源的 HUB，需开启 host 模式，否则无法使用 USB 设备。

### 0xc000021a 蓝屏
- 通常为 winlogon.exe 故障，建议重新安装 Windows。

### “计算机意外重启或遇到错误”
- 需重新安装 Windows，参考[安装说明](Installation-zh.md)。

### DRIVER PNP WATCHDOG 蓝屏
- 可能是触摸面板识别问题。
- 恢复安卓 boot.img 并重启到安卓。
- 用 [Device Info HW](https://play.google.com/store/apps/details?id=ru.andr7e.deviceinfohw&pcampaignid=web_share) 查询触摸面板类型，下载对应的 firstboot uefi img 并刷入（[下载链接](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/releases/tag/UEFI-Boot-Image)）。
- 重启到 recovery 并刷入 wininstaller zip。
- 重启时按住音量加键再次进入 recovery。
- 刷入 firstboot uefi img 到 boot 分区。
- 重启系统，等待 Windows 安装界面出现前不要操作设备。（多次重启属于正常现象）

### INACCESSIBLE_BOOT_DEVICE 蓝屏
- 可能为驱动损坏，建议参考[安装说明](Installation-zh.md)重新安装 Windows。

### 屏幕变暗
- 可尝试按电源键休眠再唤醒。

### WiFi/移动数据不可用
- 重启 Windows，若无效请在 recovery 恢复 modem 和 persist 分区。