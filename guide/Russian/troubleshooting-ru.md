<img align="right" src="beryllium.png" width="350" alt="Windows Installation on beryllium"> 


# Запуск Windows на Xiaomi Pocophone F1

## Устранение неполадок
> Ниже вы найдёте список распространённых проблем и их решений
#
### Не работают звук и поворот экрана
> Перезагрузитесь в режиме восстановления и установите последнюю версию [UEFI](https://github.com/n00b69/woa-beryllium/releases/tag/UEFI)
### Установка не удалась
Похоже, вы не следовали инструкциям. 
Скачайте установочный файл только по указанной ссылке, и в памяти вашего телефона должно быть не менее 6 ГБ свободного места. 
#
### Сенсорный экран не работает после перехода в спящий режим
> Перезагрузите устройство. Эта проблема, похоже, не имеет решения.
#
### Невозможно записать данные в Windows на Android
> Это вызвано тем, что Windows выключается, а не перезапускается.
- Чтобы решить эту проблему, загрузитесь в Windows, а затем нажмите «перезагрузить», затем, когда экран погаснет, загрузитесь в TWRP и оттуда загрузите Android.
- Или отключите спящий режим в Windows с помощью [этого](https://github.com/n00b69/woa-beryllium/releases/tag/1.0) скрипта 
> Кроме того, если вы уже настроили приложение Switch to Android, просто используйте его для переключения на Android.
#
### USB не работает
Включите режим USB-хоста с помощью этого руководства :-.
> [!Внимание]
> Отключите режим USB-хоста, если вы используете USB-концентратор с питанием, так как это может необратимо повредить ваше устройство. Если вы не используете USB-концентратор с питанием, включите режим USB-хоста, иначе вы не сможете использовать USB-устройства.

Запустите [USB Host Control](https://github.com/erdilS/Port-Windows-11-Xiaomi-Pad-5/releases/download/USBHost/USB.Host.Mode.Control.V4.0.vbs), чтобы включить/отключить режим USB-хоста, подтвердите, что вы хотите отключить/включить режим USB-хоста, а затем подтвердите перезагрузку
#
### 0xc000021a BSOD
Обычно это означает, что произошла ошибка winlogon.exe, и вам может потребоваться переустановить Windows.
#
### Компьютер неожиданно перезагрузился или столкнулся с непредвиденной ошибкой
Если вы столкнулись с этой ошибкой, вам может потребоваться переустановить Windows. Воспользуйтесь [руководством по установке](Installation-ru.md)
#
### Синий экран с ошибкой DRIVER PNP WATCHDOG
(возможно, из-за проблемы с распознаванием сенсорной панели)
- Восстановите файл boot.img и перезагрузите компьютер в режиме Android.
- Скачайте приложение [Device Info HW](https://play.google.com/store/apps/details?id=ru.andr7e.deviceinfohw&pcampaignid=web_share), проверьте тип вашей сенсорной панели.
- Скачайте файл firstboot uefi img по этой [ссылке](https://github.com/Kumar-Jy/Windows-in-PocoF1-Without-PC/releases/tag/UEFI-Boot-Image)
- Перезагрузитесь в режим восстановления и прошейте zip-файл wininstaller
- При перезагрузке нажмите кнопку увеличения громкости, чтобы снова войти в режим восстановления
- Прошейте файл firstboot uefi img в загрузочном разделе
- Перезагрузитесь в систему и не трогайте телефон, пока не появится логотип установки Windows
(Несколько перезагрузок — это нормально)
#
### Синий экран смерти INACCESSIBLE_BOOT_DEVICE
Этот синий экран смерти, скорее всего, означает, что какой-то драйвер был установлен неправильно. Чтобы исправить это, переустановите Windows, следуя [руководству по установке](Installation.md).
#
### Мой экран стал тусклее, чем раньше
Странный способ обойти эту проблему... — просто нажать кнопку питания, чтобы перевести телефон в спящий режим, и снова нажать, чтобы вывести его из спящего режима. По какой-то причине это работает.
#
### Wi-Fi и мобильные данные не работают
Перезапустите Windows. Если не работает, восстановите модем и сохраните данные из режима восстановления.#