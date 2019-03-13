@echo off

:: build script
call %~dp0gradlew.bat build
call %~dp0gradlew.bat --stop

