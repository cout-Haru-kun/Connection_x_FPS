
@echo off

ipconfig /flushdns

ECHO 25%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 delete dns name="Wi-Fi" all
netsh interface ipv4 delete dns name="Wi-Fi 2" all

ECHO 50%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=186.125.131.18
netsh interface ipv4 add dns name="Wi-Fi 2" address=186.125.131.18

ECHO 75%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=200.110.146.118 index=2
netsh interface ipv4 add dns name="Wi-Fi 2" address=200.110.146.118 index=2


ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT