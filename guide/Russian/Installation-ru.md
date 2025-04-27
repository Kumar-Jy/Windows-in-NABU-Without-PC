# Установка Windows на Xiaomi Pad 5 [без ПК]
<img align="right" src="/guide/nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Требования
- ```Разблокированный загрузчик``` - (Если не разблокирован, используйте [этот](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/Russian/unlock-bootloader-ru.md) гайд)

- `Другие Android устройства/ПК для загрузки в модифицированное восстановление` - (или вы можете использовать [этот](TWRPInstallation-ru.md) гид для постоянной установки TWRP)

- `Кабель USB OTG для подключения Android телефона/ПК к Xiaomi Pad 5`

- `Модифицированный образ recovery для создания раздела и установки Windows`

-  ```Рабочий мозг```
#

## ⚠️ Важное предупреждение
> - _Этот проект находится на начальной стадии, используйте его на свой страх и риск._
> - _Все ваши данные будут стерты! Сделайте резервное копирование, если необходимо._
> - _Сделайте резервную копию важных разделов (Boot, EFS, Modem и Persist) и скопируйте их на внешний носитель._
> - _Не прошивайте/не запускайте тот же файл/команду дважды, если это не указано._
> - _Следуйте пошаговому руководству, не пропускайте и не перепрыгивайте шаги._
> - _Вы МОЖЕТЕ повредить ваше устройство, если выполните команды/файлы неправильно!!!_
> - _НЕ ПЕРЕЗАГРУЖАЙТЕ NABU! Если вы думаете, что сделали ошибку, попросите помощь в [чате Telegram](https://t.me/WinInstaller)._
#

---

## 1-й шаг: Разделение Userdata
<details>
  <summary><strong>Нажмите здесь для разделения</strong></summary> 
  
- Скачайте [модифицированный образ recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Modded-TWRP-Recovery) на ваше Android-устройство и Xiaomi Pad 5.

- Скачайте [Magisk Manager APK](https://github.com/topjohnwu/Magisk/releases) на ваш Xiaomi Pad 5.

- Перезагрузите Pad 5 в режим Fastboot, удерживая кнопки уменьшения громкости и питания.

- Подключите ваше Android-устройство или ПК к Pad 5 с помощью кабеля USB OTG и откройте сайт [https://arkt-7.github.io/nabu/](https://arkt-7.github.io/nabu/) в любом браузере (рекомендуется Chrome).

- Нажмите на `Connect Device Fastboot` и выберите `Android`. Устройство подключится, и будет отображена информация о вашем Pad 5.

- Теперь перейдите в раздел `Boot Any Image`, выберите `modded-twrp.img`, нажмите на `Boot`, и TWRP откроется на вашем Pad 5.

- Если это не удастся, вы можете использовать команду `fastboot boot modded-twrp.img` через platform-tools на ПК или через приложение Bugjaeger или Termux на Android для загрузки вашего Pad 5 в модифицированный образ recovery.

- Теперь отсоедините кабель USB OTG. Перейдите в раздел `Install` в TWRP, выберите `magisk.apk` и проведите для прошивки (пропустите этот шаг, если ваше устройство уже имеет root-права).

- Теперь на главном экране перейдите в `Advanced` > `Terminal` и введите команду `partition $` (замените `$` на желаемый размер раздела в ГБ, например, `partition 60`), без ГБ.

- Перезагрузитесь в систему и завершите настройку Android.

- Скачайте и установите [Magisk.apk](https://github.com/topjohnwu/Magisk/releases), откройте его и перезагрузите, если будет предложено.

</details>

---

## 2-й шаг: Установка Windows
<details>
  <summary><strong>Нажмите здесь для установки</strong></summary>

- Скачайте последнюю версию [`WinInstaller.zip`](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/tag/Nabu-WinInstaller).

- Скачайте обычный [`Windows ARM ESD`](https://arkt-7.github.io/woawin/), или вы можете скачать [`24h2 IoT LTSC`](https://drive.google.com/file/d/1WvTUIldcmffprJ2ZrdrLjlKqlz_vSlYa/view?usp=drivesdk).

- Поместите файл ESD в папку `Download` на вашем Xiaomi Pad 5 или в папку `WOA` на USB-накопителе. (Да, вы также можете установить его с помощью USB-накопителя.)

- Перезагрузитесь в модифицированный обрад recovery, перейдите в раздел Install, выберите `WinInstaller.zip` и проведите для прошивки. После завершения прошивки перезагрузитесь в систему.

- После этого ваше устройство перезагрузится и начнётся автоматический процесс установки Windows.

- Подождите, пока все процессы завершатся, и появится первоначальная настройка Windows. (Это может занять максимум 10-15 минут и в конечном итоге устройство перезагрузится 2-3 раза.)

</details>

---

## 3-й шаг: Настройка Dualboot
<details>
  <summary><strong>Нажмите здесь для настройки Dualboot</strong></summary>
  
- Дважды щелкните на значок `Android` на рабочем столе, чтобы переключиться на Android (с Windows).
- Чтобы загрузиться с Android в Windows, установите приложение [Woa-Helper.apk](https://github.com/n00b69/woa-helper/releases) из папки "Загрузки", разрешите root-права и нажмите `БЫСТРАЯ ЗАГРУЗКА В WINDOWS`.

</details>

---

## Разное:
<details>
  <summary><strong>Нажмите здесь для различных настроек</strong></summary>
  
- Найдите папку `Toolbox` на диске `C:\`. Она содержит различные полезные файлы и папки.
- Чтобы установить Microsoft Office, подключитесь к интернету и запустите `Office Tool Plus.exe` из папки `office_tool`.
- Для AtlasOS разархивируйте и запустите `AMEWizard`, выберите `AtlasPlaybook.apbx` и следуйте инструкциям.
- Для активации Windows и Office подключитесь к интернету и запустите `winactivator.bat` от имени администратора.

</details>

## Устранение неисправностей
<details>
  <summary><strong>Нажмите здесь для устранения неисправностей</strong></summary>

#### После того, как вы нажмете на значок Android с рабочего стола Windows, если устройство загружается в TWRP:
> - (Эта ошибка обычно возникает, если вы используете кастомную прошивку и прошили WinInstaller с неактивного раздела.)
> - Переключите слоты в разделе перезагрузки TWRP и перезагрузитесь в систему.
> - Откройте приложение Woa-Helper, разрешите root-права, нажмите `СМОНТИРОВАТЬ WINDOWS`, затем нажмите `РЕЗЕРВНОЕ КОПИРОВАНТЕ BOOT ОБРАЗА` и выберите `Windows`.

#### Если не удается загрузиться в Windows, выполните следующие шаги:
> - Перезагрузитесь в fastboot и прошейте ваш Android boot.img: `fastboot flash boot_ab /путь/к/boot.img`.
> - Вы можете просто перезагрузиться в TWRP с помощью команды `fastboot boot /путь/к/twrp.img` и восстановить boot.img из папки `/sdcard/backup`.
> - Если вы используете AOSP ROM и TWRP установлен на вторичном разделе, введите команду fastboot `fastboot set_active other`, и ваш Android вернется.

> [!TIP]
> Вы можете использовать [`Nabu Fastboot Tool`](https://arkt-7.github.io/nabu/) для ввода всех этих команд для устранения неисправностей.
> 
> Найдите папку `backup` на внутреннем хранилище вашего устройства и сохраните её в безопасном месте (например, на Google Drive).

</details>
---
