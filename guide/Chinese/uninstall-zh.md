# 卸载说明

### 为什么需要卸载？
> 如果你想重新锁定引导加载程序，你需要恢复原厂分区表。

> [!警告]
> **所有数据都将被清除！如有需要请提前备份。**

### 切换到安卓
> 如果你上一次启动的是 Windows，请先切换回安卓再开始卸载流程。

#### 重启进入 fastboot 模式
- 按住 **`音量减`** 键并连接 USB 线重启，即可让平板进入 **fastboot 模式**
- 或者，如果已开启 USB 调试，可在安卓系统下运行以下命令：
```cmd
adb reboot bootloader
```

> [!注意]
>
> ▶️ 点击展开菜单。

<details>
  <summary><strong>方法一 - 使用 adb shell restore 卸载</strong></summary>

### 前置条件
- [```Android platform tools```](https://developer.android.com/studio/releases/platform-tools)

- [```修改后的 Recovery 镜像```](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/download/1.0/recovery.img) 

#### 启动修改版 recovery
> 在 platform-tools 文件夹内打开 CMD 窗口，然后（平板处于 fastboot 模式时）运行：
```cmd
fastboot boot path\to\recovery.img
```

### 恢复分区布局
> [!警告]
> 这会清除你的安卓文件。如有需要请提前备份。

```cmd
adb shell restore
```

#### 重启进入安卓
```cmd
adb reboot 
```

## 完成！

</details>

<details>
  <summary><strong>方法二 - 在 fastboot 下卸载</strong></summary>

### 前置条件
- [```Android platform tools```](https://developer.android.com/studio/releases/platform-tools)

- [```gpt_both0.bin```](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/download/1.0/gpt_both0.bin) 

### 恢复分区表   
> 将 ```path\to\gpt_both0.bin``` 替换为 gpt_both0.bin 文件的实际路径。
```cmd
fastboot flash partition:0 path\to\gpt_both0.bin
```

#### 擦除用户数据
> 为避免卡开机动画并恢复文件系统大小
```cmd
fastboot -w
```

#### 重启进入安卓
```cmd
fastboot reboot
```

## 完成！

</details>

<details>
  <summary><strong>方法三 - 使用“Nabu Fastboot Tool”卸载</strong></summary>

### 前置条件
 `一根`**`数据线`**`，用于连接你的`**`小米平板5`**`和`**`其他设备`**`

 **`任意其他设备（Android、Windows、Mac 或 Linux）`**

### 连接到网页 Fastboot 工具
- 在任意设备的浏览器中打开 **[Nabu Fastboot Tool](https://arkt-7.github.io/nabu/)**。
- 点击 **`Connect Device Fastboot`** 按钮。
- 在弹出的列表中选择 **`Android`** 并**允许**权限。

### 格式化并恢复原厂分区
- 向下滚动到 **`Format/wipe make Partition Stock`** 区域。
- 在输入框中输入 **`format`**。
- 点击 **`Format/Wipe`** 按钮，弹出警告时点击 **`OK`**。
- 格式化完成后会弹出成功提示，点击 **`OK`** 关闭。
- 向上滚动，点击 **`Reboot Device`** 按钮重启设备。

## 完成！

</details>

> [!注意]
> 如果卸载 Windows 后设备**自动进入 recovery**，请按以下步骤操作：
> 1. 选择 **清除数据/恢复出厂设置**
> 2. **清除所有数据**
> 3. 数据清除成功后，点击返回主菜单
> 4. 点击 **重启**
> 5. 重启进入系统
