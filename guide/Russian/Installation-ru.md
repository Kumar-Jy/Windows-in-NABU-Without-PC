# Установка Windows на Xiaomi Pad 5 [без ПК]
<img align="right" src="/guide/nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Предварительные условия
- ```Разблокированный загрузчик``` - (Если он не разблокирован, воспользуйтесь [этим](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/Russian/unlock-bootloader-ru.md) руководством)

- `Установленный TWRP recovery` - (Если не установлено, воспользуйтесь [этим](TWRPInstallation-ru.md) руководством)

-  ```Рабочий мозг```
#

## ⚠️ Предупреждение
> - _Этот проект находится на начальной стадии, используйте его на свой страх и риск._
> - _Все ваши данные будут удалены ! При необходимости сделайте резервную копию._
> - _Сделайте резервную копию важных разделов (Boot, EFS, Modem и Persist) и скопируйте её за пределы внутренней памяти планшета_
> - _Не выполняйте/не запускайте один и тот же файл/команду дважды, если это не указано._
> - _Следуйте пошаговому руководству, не пропускайте ни одного шага._
> - _ВЫ МОЖЕТЕ ПОВРЕДИТЬ СВОЕ УСТРОЙСТВО, ЕСЛИ НЕПРАВИЛЬНО ВЫПОЛНИТЕ ПРИВЕДЕННЫЕ НИЖЕ КОМАНДЫ/ФАЙЛ!!!_
> - _НЕ ПЕРЕЗАГРУЖАЙТЕ ПЛАНШЕТ! Если вы считаете, что допустили ошибку, обратитесь за помощью в [чат Telegram](https://t.me/WinInstaller)._
#

## _1-й шаг_ — разделение пользовательских данных
- Скачайте [модифицированный TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Modded-TWRP-Recovery/modded-twrp.img)
  
- Скачайте [Magisk Manager](https://github.com/topjohnwu/Magisk/releases/download/v28.0/Magisk-v28.0.apk)
  
- Загрузитесь в _**модифицированный TWRP recovery**_ (либо с помощью команды fastboot, либо вы можете установить его на постоянной основе, следуя [этой инструкции](TWRPInstallation-ru.md) .

- Теперь перейдите в терминал и введите `partition $$` (замените `$$` на нужный вам размер раздела Windows в гигабайтах, например `partition 60`)
 
- Перезагрузитесь в систему и завершите настройку Android и Magisk.
  
> [!ПРИМЕЧАНИЕ]
> Если не удалось загрузиться в Android и вернуться в TWRP, откройте терминал восстановления и введите `formatdata`, затем перезагрузите устройство.
#

## _2-й шаг_ — установка Windows

- Скачайте последнюю версию [`WinInstaller.zip`](https://github.com/Kumar-Jy/WinInstaller/releases/download/NABU_WinInstaller/Nabu_WinInstaller_R4.zip).
  
- Скачайте [`ARM Windows ESD`](https://arkt-7.github.io/woawin/) [Не используйте 24H2, это может привести к поломке вашего устройства]


- Файл ESD должен находиться в папке `Загрузки` по умолчанию на вашем Xiaomi Pad 5.
  
- Перезагрузитесь в модифицированное TWRP Recovery и загрузите `WinInstaller.zip`.
  
- Дождитесь завершения всех процессов и появления окна установки Windows. (Это займет от 10 до 15 минут и в итоге потребуется 2 или 3 перезагрузки)
  
- Дважды щелкните значок `Android` на рабочем столе, чтобы переключиться на Android (из Windows).

- Для загрузки в Windows (с Android) скачайте и откройте приложение [Woa-Helper](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), предоставьте права суперпользователя и нажмите `БЫСТРАЯ ЗАГРУЗКА В WINDOWS`
#

## Устранение неполадок
#### После нажатия на значок Android на рабочем столе Windows, если загрузка происходит в режиме восстановления twrp: -
> - (эта ошибка обычно возникает, если вы используете пользовательский ПЗУ и устанавливаете WinInstaller с неактивного раздела)
> - переключите слот в разделе перезагрузки twrp и перезагрузите систему.
> - Откройте приложение Woa-Helper - разрешите root-доступ - нажмите `MOUNT WINDOWS PARTITION` - теперь нажмите `резервное копирование загрузочного раздела` и выберите `Windows` 

#### Если по какой-то причине не удалось загрузиться в Windows, выполните следующие действия: -
> - перезагрузите устройство в режим быстрой загрузки и прошейте свой файл boot.img для Android `fastboot flash boot_ab /путь/к/файлу/boot.img`
> - Вы можете просто перезагрузиться в TWRP, используя команду `fastboot boot /путь/к/twrp.img` и восстановив файл boot.img из папки `/sdcard/backup`
> - Если вы используете прошивку AOSP и ваш TWRP установлен во второстепенном разделе, введите команду fastboot `fastboot set_active other`, и ваш Android вернется.

> [!TIP]
> Вы можете использовать [`Nabu Fastboot Tool`](https://arkt-7.github.io/nabu/) для ввода всех этих команд для устранения неполадок.
