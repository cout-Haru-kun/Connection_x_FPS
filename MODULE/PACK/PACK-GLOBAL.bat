@echo off


Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\1\1-GLOBAL.bat
Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\1\1-DNS-GLOBAL.bat
Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\2\2-CONNECTION.bat
Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\2\2-GAME.bat
Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\3\3.bat
Start /MIN /REALTIME C:\Users\%USERNAME%\Desktop\Connection_x_FPS\MODULE\5\5.bat

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


EXIT