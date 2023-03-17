@echo off
@set currdir=%~dp0
@set targetpath=C:\Users\%UserName%\AppData\Local\Microsoft\WindowsApps
@del /f /q %targetpath%\msys-*.dll
@xcopy /Y %currdir%\bin\*.dll %targetpath%
@xcopy /Y %currdir%\bin\*.exe %targetpath%
