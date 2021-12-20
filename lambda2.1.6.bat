@echo off
SETLOCAL EnableDelayedExpansion
for /F "tokens=1,2 delims=#" %%a in ('"prompt #$H#$E# & echo on & for %%b in (1) do     rem"') do (
  set "DEL=%%a"
)

cd "%~dp0"
title Lambda
IF "%1" == "/upg" goto :upg
IF "%1" == "/inst" goto :inst
IF "%1" == "/complete" goto :complete
IF "%1" == "/help" goto :help
IF "%1" == "/?" goto :help
IF "%1" == "" goto :complete

:upg
color 1f
call :colorEcho 2f "Lambda "
call :colorEcho e0 "[v 2.1.6]"
call :colorEcho f0 "            Developed by FranzaGeek              ]"
echo.
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating registry settings...
call :colorEcho 2f "[1-1]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /f /t REG_DWORD /d 1
echo.
echo Done! λ is now configured successfully.
pause
color
exit /b

:inst
color 1f
call :colorEcho 2f "Lambda "
call :colorEcho e0 "[v 2.1.6]"
call :colorEcho f0 "            Developed by FranzaGeek              ]"
echo.
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating registry settings...
call :colorEcho 2f "[1-5]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[2-5]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[3-5]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[4-5]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[5-5]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /f /t REG_DWORD /d 1
echo.
echo Done! λ is now configured successfully.
pause
color
exit /b

:complete
color 1f
call :colorEcho 2f "Lambda "
call :colorEcho e0 "[v 2.1.6]"
call :colorEcho f0 "            Developed by FranzaGeek              ]"
echo.
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating registry settings...
call :colorEcho 2f "[1-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[2-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[3-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[4-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[5-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /f /t REG_DWORD /d 1
call :colorEcho 2f "[6-6]"
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /f /t REG_DWORD /d 1
echo.
pause
color
exit /b

:help
color
call :colorEcho 2f "Lambda "
call :colorEcho e0 "[v 2.1.6]"
call :colorEcho f0 "            Developed by FranzaGeek              ]"
echo.
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Usage: lambda /command
echo     [/upg]              Import keys that allow you to upgrade 
echo                         to Windows 11 on unsupported hardware.
echo     [/inst]             Import keys that allow you to install 
echo                         Windows 11 on unsupported hardware.
echo     [/complete]         Import all the necessaries keys that 
echo                         allow you to install or upgrade to
echo                         Windows 11 on unsupported hardware.
echo     [/?, /help]         Shows this help.
echo.
pause
exit /b

:colorEcho
echo off
<nul set /p ".=%DEL%" > "%~2"
findstr /v /a:%1 /R "^$" "%~2" nul
del "%~2" > nul 2>&1i
