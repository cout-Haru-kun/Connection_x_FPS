
@echo off

ipconfig /flushdns

ECHO 25%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 delete dns name="Wi-Fi" all
netsh interface ipv4 delete dns name="Wi-Fi 2" all

ECHO 50%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=1.1.1.1
netsh interface ipv4 add dns name="Wi-Fi 2" address=1.1.1.1

ECHO 75%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=8.8.4.4 index=2
netsh interface ipv4 add dns name="Wi-Fi 2" address=8.8.4.4 index=2

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT