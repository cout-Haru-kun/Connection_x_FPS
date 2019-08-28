
@ECHO OFF

set version=v.3.0.1

ECHO Analysing system...
ECHO Version %version%


del %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

set /p COLOR=<%USERPROFILE%\Desktop\Connection_x_FPS\GUI\COLOR.txt





ECHO Color detect..
ECHO COLOR : %COLOR%
ECHO Setting color..
color %COLOR%
ECHO Done color.





Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\ETC\OS.bat






:IS_FINISH-START

ping localhost -n 2 >nul

if exist %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt (
 set /p PER=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
) else (
 set PER=0%%
)

if %PER%==100%% (
 ECHO Finish.
 del %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
 ping localhost -n 2 >nul
 ) else (
 ECHO Progress : %PER%
 goto :IS_FINISH-START
 )

goto :CONTINUE
PAUSE





:CONTINUE


reg query "HKCU\Control Panel\International" /v sLanguage | find /i "REG_SZ    FRA" > nul && if %errorlevel%==0 set lang=FR
reg query "HKCU\Control Panel\International" /v sLanguage | find /i "REG_SZ    EN" > nul && if %errorlevel%==0 set lang=EN

systeminfo

goto :WRITESYSTEM

PAUSE












:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:WRITESYSTEM

set /p OSDETECT=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\OS.txt

ECHO %lang% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\LANG.txt
ECHO %DATE% %TIME% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\DATE.txt
ECHO %USERNAME% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\USER.txt

ECHO LAUNCH: %DATE% %TIME% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt

goto :%lang%-PRESENTATION
PAUSE



















:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:WRITELOGS-EN

ECHO Module start..

ECHO ========================================================================================== >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt
ECHO DATE: %DATE% %TIME% >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt
ECHO EXECUTE: %exe_module% >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt

goto :IS_FINISH-%lang%
PAUSE




:IS_FINISH-EN

ping localhost -n 2 >nul

CLS

if exist %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt (
 set /p PER=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
) else (
 set PER=0%%
)

if %PER%==100%% (
 ECHO Finish.
 del %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
 ping localhost -n 2 >nul
 ) else (
 ECHO Progress : %PER%
 goto :IS_FINISH-%lang%
 )

goto :%lang%
PAUSE








:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:WRITELOGS-FR

ECHO Module lancer..

ECHO ========================================================================================== >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt
ECHO DATE: %DATE% %TIME% >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt
ECHO EXECUTE: %exe_module% >> %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\LATEST_LAUNCH.txt

goto :IS_FINISH-%lang%
PAUSE



:IS_FINISH-FR

ping localhost -n 2 >nul

CLS

if exist %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt (
 set /p PER=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
) else (
 set PER=0%%
)

if %PER%==100%% (
 ECHO Fini.
 del %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
 ping localhost -n 2 >nul
 ) else (
 ECHO Progression : %PER%
 goto :IS_FINISH-%lang%
 )

goto :%lang%
PAUSE














:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------




:EN-PRESENTATION

CLS

ECHO.
ECHO                #########################################################
ECHO                #                                                       #
ECHO                #               Connection x FPS BATCH                  #
ECHO                #                 DEVELOPED BY Lid                      # 
ECHO                #                                                       #
ECHO                #                                                       #
ECHO                #########################################################
ECHO.
ECHO                                        %version%-%lang%

ping localhost -n 3 >nul

goto :%lang%

PAUSE



:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------





:EN 

CLS

ECHO User: %USERNAME%                  Date: %DATE% %TIME%              %version%-EN
ECHO -----------------------------------------------------

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1 ECHO [1] Connection booster. (Boost connection)
 
if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2 ECHO [2] Regedit.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\3 ECHO [3] Smooth FPS (Boost game fluidity)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\4 ECHO [4] BITS. (Ping and lost paquets) /!\ Dont close [Put your batch on your desktop for automatic relaunch]

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\5 ECHO [5] OS Boost. (Boost your OS)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0 ECHO [0] STOP.

ECHO -----------------------------------------------------

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.1 ECHO [0.1] Reset connection. (Reset connection parameters)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.2 ECHO [0.2] Delete temp files. (Delete temp files and under directory)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.3 ECHO [0.3] Reset OS boost. (Remove OS boost)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK ECHO [PACK] Configurated pack.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\CHANGELOG ECHO [CHANGELOG] ChangeLog

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\ETC\UNINSTALL.bat ECHO [UNINSTALL] Uninstall.

ECHO -----------------------------------------------------
set /p exe_module=
ECHO -----------------------------------------------------

CLS

goto :SELECT_MODULE

PAUSE





























:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------



:FR-PRESENTATION

CLS

ECHO.
ECHO                #########################################################
ECHO                #                                                       #
ECHO                #                Connexion x FPS BATCH                  #
ECHO                #                 DEVELLOPER PAR Lid                    # 
ECHO                #                                                       #
ECHO                #                                                       #
ECHO                #########################################################
ECHO.
ECHO                                        %version%-%lang%

ping localhost -n 3 >nul

goto :%lang%

PAUSE





:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------


:FR

CLS

ECHO Utilisateur: %USERNAME%                  Date: %DATE% %TIME%              %version%-FR
ECHO -----------------------------------------------------

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1 ECHO [1] Boost de connexion. (Ameliore la connection)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2 ECHO [2] Regedit. (Priorite de la connection)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\3 ECHO [3] FPS lisse (Augmente la fluidite du jeu)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\4 ECHO [4] BITS. (Ping et paquets perdues) /!\ Ne pas fermer [Mettre le batch sur votre bureau pour le relancement automatique]

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\5 ECHO [5] Boost OS. (Optimise votre OS)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0 ECHO [0] STOP.

ECHO -----------------------------------------------------

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.1 ECHO [0.1] Reset connexion. (Reset les parametres de connexion)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.2 ECHO [0.2] Supprimer le fichiers temporaires. (Supprime les fichiers et sous repertoire du temp)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.3 ECHO [0.3] Reset l'OS boost. (Enleve le boost de l'OS)

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK ECHO [PACK] Pack configurer.

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\CHANGELOG ECHO [CHANGELOG] ChangeLog

if exist %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\ETC\UNINSTALL.bat ECHO [UNINSTALL] Desinstaller.

ECHO -----------------------------------------------------
set /p exe_module=
ECHO -----------------------------------------------------

CLS

goto :SELECT_MODULE

PAUSE




















:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------






:SELECT_MODULE

if %exe_module%==1 Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%-%lang%.bat

if %exe_module%==1-GLOBAL Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%.bat
if %exe_module%==1-MINECRAFT Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%.bat
if %exe_module%==1-MINECRAFT.RANDOM Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%-%lang%.bat
if %exe_module%==1-MINECRAFT.KB Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%.bat
if %exe_module%==1-DNS-GLOBAL Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%.bat
if %exe_module%==1-DNS-MINECRAFT Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\1\%exe_module%.bat

if %exe_module%==2 Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\%exe_module%-%lang%.bat

if %exe_module%==2-GAME Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\%exe_module%.bat
if %exe_module%==2-CONNECTION Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\%exe_module%.bat
if %exe_module%==2-MINECRAFT Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\2\%exe_module%.bat
if %exe_module%==3 Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\3\%exe_module%.bat
if %exe_module%==4 Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\4\%exe_module%.bat
if %exe_module%==5 Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\5\%exe_module%.bat

if %exe_module%==PACK Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%-%lang%.bat

if %exe_module%==PACK-GLOBAL Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==PACK-MINECRAFT Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==PACK-PACTIFY Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==PACK-RESET Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==PACK-TEST Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==PACK-GAME Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\PACK\%exe_module%.bat
if %exe_module%==0 goto :END
if %exe_module%==0.1 Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.1\%exe_module%.bat
if %exe_module%==0.2 Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.2\%exe_module%.bat
if %exe_module%==0.3 Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.3\%exe_module%.bat

if %exe_module%==CHANGELOG Start /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\CHANGELOG\%exe_module%-%lang%.bat

if %exe_module%==UNINSTALL Start /MIN /REALTIME %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\ETC\%exe_module%.bat

set exe_module=1
goto :WRITELOGS-%lang%

PAUSE



:: ----------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------
:END
EXIT