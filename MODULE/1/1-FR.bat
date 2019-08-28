@echo off

ECHO ============================================================
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-GLOBAL.bat ECHO [1-GLOBAL] Amelioration de connexion pour la globalite du pc.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.bat ECHO [1-MINECRAFT] Amelioration de connexion pour minecraft.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.KB.bat ECHO [1-MINECRAFT.KB] Amelioration de connexion pour pactify.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-MINECRAFT.RANDOM-FR.bat ECHO [1-MINECRAFT.RANDOM] Amelioration de connexion aleatoire pour avoir un kb random.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-DNS-GLOBAL.bat ECHO [1-DNS-GLOBAL] DNS pour un meilleur ping.
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\1-DNS-MINECRAFT.bat ECHO [1-DNS-MINECRAFT] DNS pour une meilleure latence sur minecraft.
ECHO ============================================================


ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

PAUSE & EXIT