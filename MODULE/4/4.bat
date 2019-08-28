@echo off

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


:5
ping www.google.com -n 5

sc query BITS | find /I "STATE" | find "STATE" | find "STOPPED"
goto :start

:start
sc start BITS

ping localhost -n 5 >nul

CLS
goto :5

PAUSE