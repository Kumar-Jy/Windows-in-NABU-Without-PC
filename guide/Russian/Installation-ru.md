# Windows на Xiaomi Pad 5 (без ПК)
<img align="right" src="nabu.png" width="425" alt="Windows 11 Running On A Xiaomi Pad 5">

- [![YouTube](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/assets/20044626/3abc8b52-c5c6-4495-b623-d1312195d639)](https://youtu.be/57yx5eoBu5U)
- [![telegram](https://img.shields.io/badge/chat-telegram-brightgreen.svg?logo=telegram&style=flat-square)](https://t.me/WinInstaller)
#

## Prerequisites
- ```Разблокированный загрузчик``` - (Если он не разблокирован, то почитайте [этот](https://github.com/Misha803/Port-Windows-11-Xiaomi-Pad-5/blob/main/guide/English/unlock-bootloader-en.md) гайд)

- `Установленный кастомный recovery` - (если не установлен, то почитайте [этот](TWRPInstallation.md) гайд)

-  ```Мозг```
#

## ⚠️ Внимание
> - Этот проект находится на начальной стадии, используйте его на свой страх и риск._
> - Все ваши данные будут удалены! При необходимости создайте резервную копию прямо сейчас._
> - Создайте резервную копию важного раздела (Boot, EFS, Modem и Persist) и скопируйте его во внешнюю память телефона_
> - Не запускайте один и тот же файл/команду дважды, если не указано иное._
> - _ Следуйте пошаговому руководству, не перескакивайте и не пропускайте ни одного шага._
> - _ВЫ МОЖЕТЕ ПОВРЕДИТЬ СВОЁ УСТРОЙСТВО, ЕСЛИ НАПИШИТЕ НЕПРАВИЛЬНО ПРИВЕДЕННЫЕ НИЖЕ КОМАНДЫ/ФАЙЛ!!!_
> - _НЕ ПЕРЕЗАГРУЖАЙТЕ СВОЙ ТЕЛЕФОН! Если вы считаете, что допустили ошибку, обратитесь за помощью в [чат Telegram](https://t.me/WinInstaller)._

## _1-й шаг_ — разделение пользовательских данных
- Скачайте [модифицированный TWRP recovery](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/releases/download/Modded-TWRP-Recovery/modded-twrp.img)
  
- Скачайте [Magisk Manager](https://github.com/topjohnwu/Magisk/releases/download/v28.0/Magisk-v28.0.apk)
  
- Загрузитесь в _**модифицированное TWRP recovery**_ (либо с помощью команды fastboot, либо вы можете установить его на постоянной основе, используя [это руководство](https://github.com/Kumar-Jy/Windows-in-NABU-Without-PC/blob/main/guide/TWRPInstallation.md) .

- Теперь перейдите в терминал и введите `partition $$` (замените `$$` на нужный вам размер раздела macOS в гигабайтах, например `partition 60`)
 
- Перезагрузитесь в систему и завершите настройку Android и magisk.
> [!NOTE]
> Если не удалось загрузиться в Android и вернуться в TWRP, откройте терминал восстановления и введите `formatdata`, затем перезагрузите устройство.
#

## _2-й шаг_ — установка Windows

- Скачайте последнюю версию [`WinInstaller.zip`](https://github.com/Kumar-Jy/WinInstaller/releases/download/NABU_WinInstaller/Nabu_WinInstaller_R4.zip).
  
- Скачайте [`ARM Windows ESD`](https://arkt-7.github.io/woawin/) [Не используйте 24H2, это может привести к поломке вашего устройства]


- Файл ESD должен находиться в папке `Загрузки` по умолчанию на вашем Xiaomi Pad 5.
  
- Перезагрузитесь в модифицированное TWRP recovery и загрузите WinInstaller.zip.
  
- Дождитесь завершения всех процессов и появления окна установки Windows. (Это займёт от 10 до 15 минут и в итоге потребуется 2 или 3 перезагрузки)
  
- Дважды нажмите на значок `Android` на рабочем столе, чтобы переключиться на Android (из Windows).

— Для загрузки в Windows (с Android) скачайте и откройте приложение [Woa-Helper](https://github.com/Marius586/WoA-Helper-update/releases/tag/WOA), предоставьте права суперпользователя и нажмите `БЫСТРАЯ ЗАГРУЗКА В WINDOWS`
#

## Устранение неполадок
#### После нажатия на значок Android на рабочем столе Windows, если загрузка происходит в режиме восстановления twrp: -
> - (эта ошибка обычно возникает, если вы используете пользовательский ПЗУ и устанавливаете WinInstaller с неактивного раздела)
> - переключите слот в разделе перезагрузки twrp и перезагрузите систему.
> - Откройте приложение Woa-Helper - разрешите root-доступ - нажмите на `РАЗДЕЛ МОНТИРОВАНИЯ WINDOWS` - теперь нажмите на `резервную копию загрузочного раздела` и выберите `Windows`

#### Если по какой-то причине не удалось загрузиться в Windows, выполните следующие действия: -
> - перезагрузите устройство в режиме быстрой загрузки и прошейте файл boot.img Android с помощью команды `fastboot flash boot_ab /путь/к/файлу/boot.img`
> - Вы можете просто перезагрузить устройство в режиме TWRP с помощью команды `fastboot boot /путь/к/файлу/twrp.img` и восстановить файл boot.img из папки `/sdcard/backup`
> — Если вы используете прошивку AOSP, а TWRP установлен во второстепенном разделе, введите команду fastboot `fastboot set_active other`, и ваш Android вернётся.
> — Вы можете использовать приложение [`bugjaeger`](https://play.google.com/store/apps/details?id=eu.sisik.hackendebug&pcampaignid=web_share) / для ввода всех этих команд при устранении неполадок.
