@echo off
::set FolderName=%cd%\2cm\A6

set FolderName=%cd%\2cm\A6

echo %FolderName%

python ffplay.py %FolderName%

pause
