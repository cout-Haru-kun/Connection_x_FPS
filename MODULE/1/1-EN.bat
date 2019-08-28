@echo off

ECHO ============================================================
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-GLOBAL.bat ECHO [1-GLOBAL] Connection upgrader for all your pc.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.bat ECHO [1-MINECRAFT] Connection upgrader for minecraft.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.KB.bat ECHO [1-MINECRAFT.KB] Connection upgrader for pactify.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.RANDOM-FR.bat ECHO [1-MINECRAFT.RANDOM] Connection upgrader to have random kb.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-DNS-GLOBAL.bat ECHO [1-DNS-GLOBAL] DNS for a best ping.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-DNS-MINECRAFT.bat ECHO [1-DNS-MINECRAFT] DNS for a best latency on minecraft.
ECHO ============================================================

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

PAUSE & EXIT