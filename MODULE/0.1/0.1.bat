
@echo off

ipconfig /flushdns

reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "SackOpts" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpTimedWaitDelay" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "DefaultTTL" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpNoDelay" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "GlobalMaxTcpWindowSize" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "Tcp1323Opts" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpAckFrequency" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TCPDelAckTicks" /f
reg delete "HKLM\SYSTEM\CurrentControlSet\Services\Tcpip\Parameters" /v "TcpMaxDataRetransmissions" /f

ECHO 17%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

wmic process where name="javaw.exe" CALL setpriority "normal"
wmic process where name="Pactify.exe" CALL setpriority "normal"

ECHO 34%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh winsock reset
netsh int tcp reset
netsh int ip reset
netsh int ip reset
netsh int ipv4 reset
netsh int ipv6 reset
netsh int tcp reset supplemental

ECHO 51%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 delete dns name="Wi-Fi" all
netsh interface ipv4 delete dns name="Wi-Fi 2" all

ECHO 68%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=8.8.8.8
netsh interface ipv4 add dns name="Wi-Fi 2" address=8.8.8.8

ECHO 85%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

netsh interface ipv4 add dns name="Wi-Fi" address=8.8.4.4 index=2
netsh interface ipv4 add dns name="Wi-Fi 2" address=8.8.4.4 index=2

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

EXIT