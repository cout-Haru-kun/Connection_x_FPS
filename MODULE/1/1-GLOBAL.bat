@echo off

set /p OSDETECT=<%USERPROFILE%\Desktop\Connection_x_FPS\LOGS\SYSTEM\OS.txt

if %OSDETECT%==Windows_10 (
 netsh int ipv4 set subinterface "Local Area Connection" mtu=1500 store=persistent
 netsh int ipv4 set subinterface "Connection au réseau local* 1" mtu=1500 store=persistent
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=disabled
 netsh Int tcp set global ecncapability=enabled
 netsh Int tcp set global rsc=disabled
 netsh Int tcp set global maxsynretransmissions=2
 netsh Int tcp set global fastopenfallback=enabled
 netsh int tcp set supplemental custom congestionprovider=ctcp
 )
 
 
 
 
if %OSDETECT%==Windows_8 (
 netsh int ipv4 set subinterface "Local Area Connection" mtu=1500 store=persistent
 netsh int ipv4 set subinterface "Connection au réseau local* 1" mtu=1500 store=persistent
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=disabled
 netsh Int tcp set global ecncapability=enabled
 netsh Int tcp set global rsc=disabled
 netsh Int tcp set global fastopenfallback=enabled
 netsh int tcp set global congestionprovider=ctcp
 )
 
 
 
if %OSDETECT%==Windows_7 (
 netsh interface ipv4 set subinterface "Ethernet" mtu=1500 store=persistent
 netsh Int tcp set global initialRto=2000
 netsh Int tcp set global autotuninglevel=disabled
 netsh Int tcp set global ecncapability=enabled
 netsh Int tcp set global rsc=disabled
 netsh Int tcp set global fastopenfallback=enabled
 netsh int tcp set global congestionprovider=ctcp
 )

ipconfig /renew
ipconfig /flushdns

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT