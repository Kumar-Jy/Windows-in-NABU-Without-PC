@echo off
:: Check if font has already been set because if not then it will loop
if "%1" neq "nofont" (
    :: CMD font size set to approx. 34 in hex 0x00220000
    reg add "HKCU\Console" /v FontSize /t REG_DWORD /d 0x00220000 /f >nul 2>&1
	:: maximize CMD window
    reg add "HKCU\Console" /v WindowSize /t REG_DWORD /d 0x00190050 /f >nul 2>&1
    reg add "HKCU\Console" /v WindowPosition /t REG_DWORD /d 0x00000000 /f >nul 2>&1
    :: re-run the batch file with a flag so it doesnt loop
    start "" /wait cmd /c "%~f0" nofont
    exit /b
)

setlocal enabledelayedexpansion
:: Set console max char to 99 (as best for 34 font size) so the text can be wrapped to next line
::mode con: cols=99
mode 800
:: wininstaller.conf variables
set ESP_PART_NAME=
set ESP_PART_NO=
set WI_VERSION=
set BUILD_DATE=
set DEVICE_NAME=
set SECURE_BOOT=
set MAINTAINER=
echo(
echo ============================================================
echo     Welcome to Windows Installation in %DEVICE_NAME%    
echo              Version: %WI_VERSION%              
echo              Date   : %BUILD_DATE%                           
echo              Made by: Kumar_Jy, ArKT, bibarub                          
echo     Help and suggestions: Sog, Andre_grams.        
echo     Drivers And UEFI: %MAINTAINER%
echo ============================================================
echo(
if not exist "%~d0\boot.img" echo Failed to find the boot image. & goto fail
if not exist "%~dp0sta.exe" echo Failed to find sta.exe. & goto fail
"%~dp0sta" -p "%~d0\boot.img" -n || echo Failed to flash the boot image. && goto fail

echo(
echo ============================================================
echo             Checking for Windows installation...
echo ============================================================
echo(

rem Check if Windows is already installed
if exist "%~d0\Windows\explorer.exe" (
    echo Windows is already installed.
    goto formatAndAssign
) else (
    echo Windows not installed
    goto fail
)

:formatAndAssign
echo ============================================================
echo           Formatting and assigning drive letter to bootloader
echo ============================================================
echo(

rem Format the volume, assign the drive letter S, and label it accordingly
(
    echo select volume %~d0
    echo select partition %ESP_PART_NO%
    echo format fs=fat32 quick label=%ESP_PART_NAME%
    echo assign letter=S
) | diskpart

echo(
echo ============================================================
echo           Creating bootloader files...
echo ============================================================
echo(

call :addbootentry %~d0 || goto fail

echo(
echo ==========================================================
echo           Now performing driver installation...
echo ==========================================================

rem Searching for an XML file in the target directory
set "repo=%~dp0Driver"
for %%f in ("%repo%\definitions\Desktop\ARM64\Internal\*.xml") do (
    set "xmlFile=%%f"
    goto xmlFound
)

echo No XML files found in %repo%\definitions\Desktop\ARM64\Internal\. & goto fail

:xmlFound
echo XML file found at %xmlFile%.

"%repo%\tools\DriverUpdater\%PROCESSOR_ARCHITECTURE%\DriverUpdater.exe" -r "%repo%\." -d "%xmlFile%" -p %~d0 || echo Failed to install the drivers. && goto fail

echo(
echo ==========================================================
echo Installation completed. Rebooting into Windows in 5 seconds.
echo ==========================================================
"%~dp0sta" -p "%~dp0uefi.img" -n || echo Failed to flash the UEFI image. && goto fail

echo(
echo ==========================================================
echo           Cleaning installation files........
echo ==========================================================
rmdir /s /q "%~dp0" & shutdown /r /t 5
exit /b

:fail
echo Take a picture of the error, force reboot and ask for help on Telegram @wininstaller or @woahelperchat
pause
exit /b 1
:addbootentry
bcdboot %~1\Windows /s S: /f UEFI || exit /b 1
if not "%SECURE_BOOT%"=="TRUE" (
	bcdedit /store S:\EFI\Microsoft\BOOT\BCD /set {default} testsigning on || exit /b 1
	bcdedit /store S:\EFI\Microsoft\BOOT\BCD /set {default} nointegritychecks on || exit /b 1
	rem bcdedit /store S:\EFI\Microsoft\BOOT\BCD /set {default} recoveryenabled no || exit /b 1
)
exit /b
:indexlookup
for /f "tokens=2 delims=: " %%a in ('dism /Get-WimInfo /WimFile:%imageFile% ^| findstr /i /c:"Index :"') do (
    set currentIndex=%%a
    for /f "delims=" %%b in ('dism /Get-WimInfo /WimFile:%imageFile% /Index:%%a ^| findstr /i /c:"Name : %~1"') do (
        set index=%%a
		echo Index value %%a found for %~1
        exit /b
    )
)
echo %~1 not found in the image file.
exit /b 1
