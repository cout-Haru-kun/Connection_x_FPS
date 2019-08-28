@echo off

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-GAME.bat ECHO [2-GAME] Regedit pour la prioritee des jeux.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-CONNECTION.bat ECHO [2-CONNECTION] Regedit pour la prioritee de la connexion.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\2-MINECRAFT.bat ECHO [2-MINECRAFT] Regedit pour minecraft.

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


PAUSE & EXIT