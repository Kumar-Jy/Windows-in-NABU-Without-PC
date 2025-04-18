# 常见问题排查

## 无法从安卓向 Windows 文件夹移动文件

如果你无法将文件移动到 Windows 文件夹，说明你是关机而不是重启了 Windows。解决方法：重新启动进入 Windows，选择“重启”，在重启过程中进入 fastboot，然后再返回安卓。

##### 操作完成！

## 设备在 fastboot 或 recovery 下无法识别
> 这通常说明你没有安装（正确的）USB 驱动
- 在[这里](https://github.com/n00b69/woa-betalm/releases/download/Qfil/QUD.zip)下载 QUD.zip 并解压。
- 打开设备管理器，找到名为 **Android**、**ADB Interface** 或 **QUSB_BULK** 的未知设备或有错误的设备。
- 右键该设备，选择“更新驱动程序” > “浏览文件”，然后选择你刚刚解压的 **QUD 文件夹**。

##### 操作完成！

## Windows 下无法充电
> [!⚠️警告!!]
> 不要在启用主机模式的情况下使用带电源的 USB 集线器，这可能会损坏你的设备。如果你使用带电源的 USB 集线器，请参考[禁用 USB 主机模式指南](/guide/English/Additional-materials-en.md#Disabling-USB-host-mode)

Windows 下仅部分数据线可用。已知可用的数据线有原装 Poco X3 Pro 数据线（USB-A 端有额外的橙/红色针脚），以及 Nimaso 100W USB-C to USB-C 快充线。

##### 操作完成！

## 电脑/笔记本无法识别 fastboot 下的 NABU，怎么办？
- 下载 [**`QUD.zip`**](https://github.com/n00b69/woa-betalm/releases/download/Qfil/QUD.zip) 并解压。
- 打开设备管理器，找到名为 Android 或 QUSB_BULK 的未知设备或有错误的设备。
- 右键，选择 **```更新驱动程序```** → **`浏览文件`**，然后选择你刚刚解压的 QUD 文件夹。

##### 完成！

## 设备能进入安卓或 Windows，但无法进入 bootloader

### 前置条件：
- [Termux](https://play.google.com/store/apps/details?id=com.termux)

- [Android platform tools](https://developer.android.com/studio/releases/platform-tools)

- [SHRP Recovery](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/download/1.0/SHRP.img)

#### 如果你能进入安卓：
- 安装 **Termux** 并授予 root 权限。
- 使用以下命令安装 **tsu** 和 **parted**，如有提示输入 `Y` 确认：
```cmd
pkg install tsu
```
```cmd
pkg install parted
```
- 运行以下命令打开 parted：
```cmd
parted /dev/block/sda
```
- 输入 ```print``` 列出所有分区。
- 查找名称超过 16 个字符的分区（如 "Basic Data Partition"），记下其分区号。
- 用 ```name $ test``` 重命名分区，将 **$** 替换为分区号，**test** 替换为你想要的分区名。
- 输入 ```quit``` 退出。

##### 操作完成！

#### 如果你能进入 Windows：
- 将 **C:\boot.img** 重命名为 **C:\bootb.img**。
- 下载 **SHRP recovery** 镜像，重命名为 **boot.img**，放到 `C:\`。
- 运行 **Switch to Android** 或 **Android** 快捷方式刷入并启动 SHRP recovery。
- 进入 recovery 后，将设备连接到电脑，运行：
```cmd
adb shell parted /dev/block/sda
```
- 输入 ```print``` 列出所有分区。
- 查找名称超过 16 个字符的分区（如 "Basic Data Partition"），记下其分区号。
- 用 ```name $ test``` 重命名分区，将 **$** 替换为分区号，**test** 替换为你想要的分区名。
- 输入 ```quit```。
- 运行 ```adb reboot bootloader```，看到 **FASTBOOT** 标志后，用 ```fastboot flash boot_a path\to\boot.img``` 刷入安卓 boot 镜像。
- 如果设备无法启动或又回到 recovery，可能还需要对 **boot_b** 做同样操作。

> [!important]
> 请确保将 UEFI 镜像放回 UEFI 文件夹，或（如用 Windows 方法）将 boot.img 放回 C:\

##### 操作完成！

## 启动时出现 fsa4480.sys 蓝屏死机（BSOD）
- 打开驱动文件夹

- 从 NABU.xml 中删除 ```<DriverPackageFile Path="$(mspackageroot)\components\QC8150\Device\DEVICE.SOC_QC8150.NABU\Drivers\USB" Name="fsa4480.inf" ID="fsa4480"/>``` 这一行

- 重新安装驱动

- 启动 UEFI
> [!NOTE]
> 如果仍然蓝屏，请参考 `reinstall` 指南并使用此驱动包

##### 操作完成！

## 切换到安卓后出现开机循环（Bootloop）
启动到 fastboot

```
fastboot set_active other
fastboot flash boot <boot.img>
fastboot reboot
```

##### 操作完成！