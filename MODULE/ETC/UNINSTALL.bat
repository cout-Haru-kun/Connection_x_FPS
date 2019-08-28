
@echo off

Reg.exe query "HKU\S-1-5-19\Environment"

Start %USERPROFILE%\Desktop\Connection_x_FPS\MODULE\0.2\%exe_module%-%lang%.bat
RD /s /q %USERPROFILE%\Desktop\Connection_x_FPS


EXIT