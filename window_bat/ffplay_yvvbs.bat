@echo off
rem 指定存放文件的目录
::set FolderName=C:\file
set FolderName=%cd%
for /f "delims=\" %%F in ('dir /b /a-d /o-d "%FolderName%\*.*"') do (
  echo %%F
::  ffplay.exe  %%F
    python ffplay.py %%F
)
pause
