
@echo off

set /p OSDETECT=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\OS.txt

if %OSDETECT%==Windows_7 (
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=restricted
 netsh int tcp set global maxsynretransmissions=8
 netsh int ipv4 set glob defaultcurhoplimit=65
 netsh int ipv6 set glob defaultcurhoplimit=65
 netsh int tcp set global timestamps=disabled
 netsh int tcp set global initialRto=2000
 )
 
 
 
if %OSDETECT%==Windows_8 (
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=restricted
 netsh int tcp set global maxsynretransmissions=8
 netsh int ipv4 set glob defaultcurhoplimit=65
 netsh int ipv6 set glob defaultcurhoplimit=65
 netsh int tcp set global timestamps=disabled
 netsh int tcp set global initialRto=2000
 )
 
 
 

if %OSDETECT%==Windows_10 (
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=restricted
 netsh int tcp set global maxsynretransmissions=8
 netsh int ipv4 set glob defaultcurhoplimit=65
 netsh int ipv6 set glob defaultcurhoplimit=65
 netsh int tcp set global timestamps=disabled
 netsh int tcp set global initialRto=2000
 )

wmic process where name="javaw.exe" CALL setpriority "realtime"
wmic process where name="Pactify.exe" CALL setpriority "realtime"
wmic process where name="mqsvc.exe" CALL setpriority "high priority"
wmic process where name="mqtgsvc.exe" CALL setpriority "high priority"


ipconfig /renew
ipconfig /flushdns

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


goto :MINECRAFT-RANDOM
PAUSE



:MINECRAFT-RANDOM

CLS

set /a kbred=%random% * (3 - 2 + 1) / 32768 + 2
set /a kbinc=%random% * (4 - 2 + 1) / 32768 + 2
 
if %OSDETECT%==Windows_7 (

 ECHO NOT AVAILABLE
 PAUSE & EXIT
 )
 
 
 
 
 
if %OSDETECT%==Windows_8 (

 ECHO NOT AVAILABLE
 PAUSE & EXIT
 )

 
 
 
 
 
if %OSDETECT%==Windows_10 (

 ECHO KB REDUIT
 netsh Int tcp set global maxsynretransmissions=8

 ping localhost -n %kbred% >nul


 ECHO KB AUGMENTER
 netsh Int tcp set global maxsynretransmissions=2

 ping localhost -n %kbinc% >nul
 )
 
goto :1-MINECRAFT.RANDOM

PAUSE