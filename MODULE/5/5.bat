@echo off

sc stop WMPNetworkSvc
sc stop dmwappushservice
sc stop DiagTrack

ECHO 25%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

sc config DiagTrack start= disabled
sc config dmwappushservice start= disabled

ECHO 50%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt
sc config WMPNetworkSvc start= disabled

Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Device Metadata" /v PreventDeviceMetadataFromNetwork /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Microsoft\Windows\CurrentVersion\Policies\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\MRT" /v DontOfferThroughWUAU /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\SQMClient\Windows" /v "CEIPEnable" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "AITEnable" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\AppCompat" /v "DisableUAR" /t REG_DWORD /d 1 /f
Reg.exe add "HKLM\SOFTWARE\Policies\Microsoft\Windows\DataCollection" /v "AllowTelemetry" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\AutoLogger-Diagtrack-Listener" /v "Start" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\WMI\AutoLogger\SQMLogger" /v "Start" /t REG_DWORD /d 0 /f
Reg.exe add "HKLM\SYSTEM\CurrentControlSet\Control\Session Manager\Memory Management\PrefetchParameters" /v "EnableSuperfetch" /t  REG_DWORD /d 1 /f

ECHO 75%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt

Reg.exe query "HKU\S-1-5-19\Environment"

ECHO 100%% > %USERPROFILE%\Desktop\Connection_x_FPS\LOGS\IS_FINISH.txt


EXIT