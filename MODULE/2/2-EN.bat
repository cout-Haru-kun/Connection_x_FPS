@echo off

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-GAME.bat ECHO [2-GAME] Regedit for game priority.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-CONNECTION.bat ECHO [2-CONNECTION] Regedit for connection priority.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-MINECRAFT.bat ECHO [2-MINECRAFT] Regedit for minecraft.

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


PAUSE & EXIT