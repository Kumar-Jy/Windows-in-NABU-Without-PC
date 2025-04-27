# Установка TWRP на Xiaomi Pad 5 [без ПК]
<img align="right" src="/guide/nabu.png" width="400" alt="Windows 11 Running On a Xiaomi Pad 5">

[![скачать](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/91ZdM7HfRdc)
## Шаги для перманентной установки TWRP 
### Предварительные требования
- _Рабочий мозг (самое важное из всего)_
- _Необходимо разблокировать загрузчик, если нет, следуйте этому_ [руководству.](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/Russian/Re-rooting-ru.md)
- Другое устройство Android с OTG-кабелем
- [`TWRP recovery`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery)
#

## Настройка и подготовка
- Скачайте и установите [`Bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) и [`addaway`](https://github.com/AdAway/AdAway/releases/download/v6.1.3/AdAway-6.1.3-20240706.apk) на другое ваше устройство Android
- Загрузите [TWRP Recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery) на оба устройства (Xiaomi Pad 5 и другой телефон на Android)
- [Magisk Manager.apk](https://github.com/topjohnwu/magisk/releases)
#  

<details> <summary><strong>Нажмите здесь для HyperOS/MIUI Rom</strong></summary>
 
### Установка TWRP в HyperOS/MIUI Rom
- Перезагрузите Xiaomi Pad 5 в режим fastboot, удерживая кнопку питания и кнопку уменьшения громкости
- Подключите OTG-кабель к обоим устройствам
- Перейдите в меню **FASTBOOT**
- Нажмите на синюю иконку в правом нижнем углу
- Введите команду fastboot boot и выберите загруженный файл ``twrp.img``, нажав на иконку ``clip`` в правом верхнем углу, затем нажмите ``enter``
- Теперь ваш Xiaomi Pad загрузился в режим восстановления TWRP
- Перейдите в ``Advanced`` - Нажмите ``Install Recovery Ramdisk`` в нижнем списке
- Выберите загруженный **twrp.img** из папки Download
- Проведите для флешинга.
- Установите [Magisk Manager.apk](https://github.com/topjohnwu/magisk/releases)
- Теперь перезагрузитесь и наслаждайтесь!
</details>

-----

<details> <summary><strong>Нажмите здесь для AOSP Rom</strong></summary>

 ### Установка TWRP в AOSP Rom
- Перезагрузите Xiaomi Pad 5 в режим fastboot, удерживая кнопку питания и кнопку уменьшения громкости
- Подключите OTG-кабель к обоим устройствам
- Введите команду ``fastboot set_active other``
- Теперь флешьте ``twrp.img`` командой ``fastboot flash boot`` и выберите загруженный файл ``twrp.img``, нажав на иконку clip в правом верхнем углу, затем нажмите enter
- Теперь перезагрузитесь, и вы окажетесь в режиме восстановления TWRP.
- Чтобы вернуться в ``Android`` из режима восстановления TWRP, обязательно выберите неактивный слот перед перезагрузкой.
- Чтобы загрузиться в TWRP из Android-рома, скачайте и установите приложение для управления загрузкой с [этого](https://github.com/capntrips/BootControl/releases) сайта и выберите неактивный слот.
</details>
