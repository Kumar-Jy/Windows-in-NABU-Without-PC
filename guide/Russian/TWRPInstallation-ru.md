# Установка TWRP на Xiaomi Pad 5 [без ПК]
<img align="right" src="nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

[![скачать](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)
## ${\color{darkorange}Steps\space for\space Recovery\space Installation}$ 
### Предварительные требования
- _Рабочий мозг (самое важное из всего)_
- _Необходимо разблокировать загрузчик, если нет, следуйте этому_ [руководству.](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/Re-rooting-en.md)
- Другое устройство Android с OTG-кабелем
- [`TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
#

## Настройка и подготовка
— Скачайте и установите [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) и [`addaway`](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk) на другое ваше устройство Android
- Загрузите [TWRP Recovery](https://sourceforge.net/projects/xiaomi-pad-5/files/TWRP/) на оба устройства (Xiaomi Pad 5 и другой телефон на Android)
 - Загрузите [ядро Mahiro](https://github.com/utziacre/android_kernel_xiaomi_nabu/releases/tag/20240803) на Xiaomi Pad 5 (если вы используете прошивку HyperOS/MIUI)
- Скачайте [dtbo_flasher.zip](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Files/dtbo_flasher.zip) (если вы используете прошивку AOSP)
#  

## Установка TWRP
- Переведите Xiaomi Pad 5 в режим fastboot, нажав кнопку питания и кнопку уменьшения громкости
- Подключите кабель OTG к обоим устройствам
  
  #### Откройте Bugjaeger 
  1. Перейдите в меню **FASTBOOT**
  2. Нажмите на синий значок в правом нижнем углу
  3. Введите `fastboot boot` и выберите загруженный файл `twrp.img`, нажав на значок ``клип`` в правом верхнем углу, затем нажмите `enter`
  4. Теперь ваш Xiaomi Pad загрузится в TWRP Recovery

  #### Прошивка TWRP (неактивный слот)
  - прошейте **dtbo_flasher.zip**. (Файл dtbo.img будет скопирован из активного слота в неактивный, затем перезагрузится в загрузчик)
  - Повторите шаги 1 и 2. из приведенных выше шагов.
  - Введите `fastboot set_active other`
  - Введите `fastboot flash recovery` и выберите загруженный файл "twrp.img", нажав на значок "clip" в правом верхнем углу, затем нажмите "enter"
  - Теперь перезагрузитесь, и вы перейдете в TWRP recovery.

> [!ПРИМЕЧАНИЕ]
> - Чтобы вернуться в Android из TWRP recovery, перед перезагрузкой необходимо нажать на неактивный слот.
> - Чтобы загрузиться в TWRP recovery из Android-псевдонима, установите приложение Boot Control по [этой](https://github.com/capntrips/BootControl/releases) ссылке и нажмите на неактивный слот.
###
  #### Прошивка TWRP (активный слот — только для HyperOS/MIUI Rom)
  - Прошейте `Mahiro Kernel.zip`
  - Переходим к "Дополнительно" -
  - Нажимаем "Установить Recovery Ramdisk" в нижнем списке
  - Выбираем загруженный TWRP Recovery из папки загрузки
  - Проводим пальцем, чтобы перепрошить его.
  - Перепрошиваем `Magisk Manager.apk`
  - Теперь перезагрузитесь и ! наслаждаться

#
