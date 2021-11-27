@echo off
title Lambda
IF "%1" == "/upg" goto :upg
IF "%1" == "/inst" goto :inst
IF "%1" == "/complete" goto :complete
IF "%1" == "/help" goto :help
IF "%1" == "/?" goto :help
IF "%1" == "" goto :complete

:upg
echo λ Lambda [v 1.01]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating Registry settings...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /f /t REG_DWORD /d 1 > NUL
echo.
echo Done! λ is now configured successfully.
pause
exit /b

:inst
echo λ Lambda [v 1.01]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating Registry settings...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /f /t REG_DWORD /d 1 > nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /f /t REG_DWORD /d 1 > NUL
echo.
echo Done! λ is now configured successfully.
pause
exit /b

:complete
echo λ Lambda [v 1.01]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Updating Registry settings...
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassStorageCheck" /f /t REG_DWORD /d 1 > nul
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassTPMCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassCPUCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassRAMCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\LabConfig" /v "BypassSecureBootCheck" /f /t REG_DWORD /d 1 > NUL
reg add "HKEY_LOCAL_MACHINE\SYSTEM\Setup\MoSetup" /v "AllowUpgradesWithUnsupportedTPMOrCPU" /f /t REG_DWORD /d 1 > NUL
echo.
pause
exit /b

:help
echo λ Lambda [v 1.01]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Usage: lambda /command
echo     [/upg]              Creates keys that allow you to upgrade 
echo                         to Windows 11 on unsupported hardware.
echo     [/inst]             Creates keys that allow you to install 
echo                         Windows 11 on unsupported hardware.
echo     [/complete]         Creates all the necessaries keys that 
echo                         allow you to install or upgrade to
echo                         Windows 11 on unsupported hardware.
echo     [/?, /help]         Shows this help.
echo.
pause
exit /b
