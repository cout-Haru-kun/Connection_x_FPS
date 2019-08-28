
@echo off

RD /S /Q "%userprofile%\Local Settings\Historique"
RD /S /Q "%userprofile%\Local Settings\Temporary Internet Files"
RD /S /Q "%USERPROFILE%\Cookies\*.*"

ECHO 50%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


RD /S /Q "%Temp%"
RD /S /Q "%Tmp%"
RD /S /Q "%SystemRoot%\Temp"
RD /S /Q "%USERPROFILE%\LOCALS~1\TEMPOR~1\Content.IE5\*.*
RD /S /Q "%USERPROFILE%\LOCALS~1\TEMPOR~1\*.*


ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT