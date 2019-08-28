
@echo off
ECHO Analysing system..

ver | find /i "version 10.0" > nul && if %errorlevel%==0 set OSDETECT=Windows_10
ver | find /i "version 6.4" > nul && if %errorlevel%==0 set OSDETECT=Windows_10
ver | find /i "version 6.3" > nul && if %errorlevel%==0 set OSDETECT=Windows_8
ver | find /i "version 6.2" > nul && if %errorlevel%==0 set OSDETECT=Windows_8
ver | find /i "version 6.1" > nul && if %errorlevel%==0 set OSDETECT=Windows_7

ECHO 50%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

ECHO %OSDETECT% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\OS.txt

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT