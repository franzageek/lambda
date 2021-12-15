@echo off
cd "%~dp0"
title Lambda
IF "%1" == "/upg" goto :upg
IF "%1" == "/inst" goto :inst
IF "%1" == "/complete" goto :complete
IF "%1" == "/help" goto :help
IF "%1" == "/?" goto :help
IF "%1" == "" goto :complete

:upg
echo λ Lambda [v 2.0.1]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Importing registry keys ...
reg import mosetup.reg
echo.
echo Done! λ is now configured successfully.
pause
exit /b

:inst
echo λ Lambda [v 2.0.1]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Importing registry keys...
reg import labconfig.reg
echo.
echo Done! λ is now configured successfully.
pause
exit /b

:complete
echo λ Lambda [v 2.0.1]
echo Developed by FranzaGeek
echo This is free and open-source software, and you are welcome to redistribute it.
echo.
echo Importing registry keys...
reg import labconfig.reg
reg import mosetup.reg
echo.
pause
exit /b

:help
echo λ Lambda [v 1.0.1]
echo Developed by FranzaGeek
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