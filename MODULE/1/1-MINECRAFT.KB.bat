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


:1-MINECRAFT.KB



if %OSDETECT%==Windows_7 (
 ipconfig /flushdns
 ECHO KB REFRESH

 ping localhost -n 3 >nul
 CLS
 )
 
 
 
 
 
if %OSDETECT%==Windows_8 (
 ipconfig /flushdns
 ECHO KB REFRESH

 ping localhost -n 3 >nul
 CLS
 )

 
 
 
 
 
if %OSDETECT%==Windows_10 (
 ipconfig /flushdns
 netsh Int tcp set global maxsynretransmissions=8
 ECHO KB REFRESH

 ping localhost -n 3 >nul
 CLS
 )

goto :1-MINECRAFT.KB

PAUSE
