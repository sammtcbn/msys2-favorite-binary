@echo off
set toppath=%~dp0..\
@set msys2-installed-path=C:\msys64

:init
if not exist %toppath%\bin (
    mkdir %toppath%\bin
)

del /f /q %toppath%\bin\*

:main
call :cp-msys2-usr-bin *.dll
call :cp-msys2-usr-bin awk.exe
call :cp-msys2-usr-bin bunzip2.exe
call :cp-msys2-usr-bin bzcat.exe
call :cp-msys2-usr-bin bzip2.exe
call :cp-msys2-usr-bin cal.exe
call :cp-msys2-usr-bin chmod.exe
call :cp-msys2-usr-bin chown.exe
call :cp-msys2-usr-bin clear.exe
call :cp-msys2-usr-bin col.exe
call :cp-msys2-usr-bin column.exe
call :cp-msys2-usr-bin dd.exe
call :cp-msys2-usr-bin fdisk.exe
call :cp-msys2-usr-bin file.exe
call :cp-msys2-usr-bin flock.exe
call :cp-msys2-usr-bin gawk.exe
call :cp-msys2-usr-bin getopt.exe
call :cp-msys2-usr-bin gettext.exe
call :cp-msys2-usr-bin gzip.exe
call :cp-msys2-usr-bin hexdump.exe
call :cp-msys2-usr-bin id.exe
call :cp-msys2-usr-bin info.exe
call :cp-msys2-usr-bin install.exe
call :cp-msys2-usr-bin kill.exe
call :cp-msys2-usr-bin ldd.exe
call :cp-msys2-usr-bin less.exe
call :cp-msys2-usr-bin lsattr.exe
call :cp-msys2-usr-bin lzcat.exe
call :cp-msys2-usr-bin lzma.exe
call :cp-msys2-usr-bin lzmadec.exe
call :cp-msys2-usr-bin lzmainfo.exe
call :cp-msys2-usr-bin mcookie.exe
call :cp-msys2-usr-bin mkfifo.exe
call :cp-msys2-usr-bin nano.exe
call :cp-msys2-usr-bin nice.exe
call :cp-msys2-usr-bin nohup.exe
call :cp-msys2-usr-bin printf.exe
call :cp-msys2-usr-bin ps.exe
call :cp-msys2-usr-bin sed.exe
call :cp-msys2-usr-bin sync.exe
call :cp-msys2-usr-bin tabs.exe
call :cp-msys2-usr-bin toe.exe
call :cp-msys2-usr-bin uname.exe
call :cp-msys2-usr-bin unlzma.exe
call :cp-msys2-usr-bin unxz.exe
call :cp-msys2-usr-bin unzstd.exe
call :cp-msys2-usr-bin uuidgen.exe
call :cp-msys2-usr-bin wget.exe
call :cp-msys2-usr-bin whereis.exe
call :cp-msys2-usr-bin which.exe
call :cp-msys2-usr-bin who.exe
@rem call :cp-msys2-usr-bin whoami.exe
call :cp-msys2-usr-bin xz.exe
call :cp-msys2-usr-bin xzcat.exe
call :cp-msys2-usr-bin xzdec.exe
@rem call :cp-msys2-usr-bin zdump.exe
@rem call :cp-msys2-usr-bin zstd.exe
@rem call :cp-msys2-usr-bin zstdcat.exe
@rem call :cp-msys2-usr-bin zstdmt.exe

@rem rename some binary in order to avoid existing command in Windows
rename %toppath%\bin\find.exe lfind.exe

goto exit

:cp-msys2-usr-bin
@xcopy /Y %msys2-installed-path%\usr\bin\%1 %toppath%\bin
if %ERRORLEVEL% NEQ 0 (
    echo failed to copy %1
	@rem pause
)
exit /b 0

:exit
echo bye

