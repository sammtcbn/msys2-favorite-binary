@echo off
set dlver=20210725
set dlfile=msys2-x86_64-%dlver%.exe
set dlurl=https://github.com/msys2/msys2-installer/releases/download/2021-07-25/%dlfile%
curl --fail --output %dlfile% %dlurl%
if %errorlevel% neq 0 (
    echo Fail to download %dlfile%
    goto End
)

:END
echo bye
timeout /t 3
