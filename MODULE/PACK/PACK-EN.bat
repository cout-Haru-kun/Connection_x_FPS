@echo off

ECHO ===========================================================
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-GLOBAL.bat ECHO [PACK-GLOBAL]
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-MINECRAFT.bat ECHO [PACK-MINECRAFT]
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-PACTIFY.bat ECHO [PACK-PACTIFY]
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-GAME.bat ECHO [PACK-GAME]
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-TEST.bat ECHO [PACK-TEST]
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\PACK-RESET.bat ECHO [PACK-RESET]
ECHO ===========================================================

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


PAUSE & EXIT