::[Bat To Exe Converter]
::
::YAwzoRdxOk+EWAjk
::fBw5plQjdCyDJGyX8VAjFD1GTQqYPUy/A74gzOfs4eaIo0kOaO4+dY3f2/mHI+9d40brFQ==
::YAwzuBVtJxjWCl3EqQJgSA==
::ZR4luwNxJguZRRnk
::Yhs/ulQjdF+5
::cxAkpRVqdFKZSjk=
::cBs/ulQjdF+5
::ZR41oxFsdFKZSDk=
::eBoioBt6dFKZSDk=
::cRo6pxp7LAbNWATEpCI=
::egkzugNsPRvcWATEpCI=
::dAsiuh18IRvcCxnZtBJQ
::cRYluBh/LU+EWAnk
::YxY4rhs+aU+JeA==
::cxY6rQJ7JhzQF1fEqQJQ
::ZQ05rAF9IBncCkqN+0xwdVs0
::ZQ05rAF9IAHYFVzEqQJQ
::eg0/rx1wNQPfEVWB+kM9LVsJDGQ=
::fBEirQZwNQPfEVWB+kM9LVsJDGQ=
::cRolqwZ3JBvQF1fEqQJQ
::dhA7uBVwLU+EWDk=
::YQ03rBFzNR3SWATElA==
::dhAmsQZ3MwfNWATElA==
::ZQ0/vhVqMQ3MEVWAtB9wSA==
::Zg8zqx1/OA3MEVWAtB9wSA==
::dhA7pRFwIByZRRnk
::Zh4grVQjdCyDJGyX8VAjFD1GTQqYPUy/A74gzO3o5P6IsnERVe89fI7ni4jfbrBC1hSqJdh890ZWmcYOCBoWewquDg==
::YB416Ek+ZW8=
::
::
::978f952a14a936cc963da21a135fa983
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