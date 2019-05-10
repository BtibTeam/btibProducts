@echo off

::%1%
set home=C:\Niagara\Niagara-4.7.109.20

echo Set user env:
SETX NIAGARA_HOME "%home%"
SETX -m NIAGARA_HOME "%home%"

:: build script
call %~dp0gradlew.bat build
call %~dp0gradlew.bat --stop

echo Remove user env:
reg delete "HKEY_CURRENT_USER\Environment" /v NIAGARA_HOME /f
reg delete "HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Control\Session Manager\Environment" /v NIAGARA_HOME /f

PAUSE