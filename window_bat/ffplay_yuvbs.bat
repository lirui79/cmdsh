@echo off
::set FolderName=%cd%\2cm\A6

::set FolderName=%cd%\10bit
::set FolderName=%cd%\downscaler
set FolderName=%cd%\yuv422


echo %FolderName%

python ffplay.py %FolderName%

pause
