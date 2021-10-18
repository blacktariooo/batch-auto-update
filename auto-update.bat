@echo off
setlocal enabledelayedexpansion
set "el=black=[0m,bgblack=[40m,yellow=[33m,bgyellow=[43m,blue=[34m,bgblue=[44m,yellow=[33m,white=[37m,green=[32m,bggreen=[42m,red=[31m,bgred=[41m,off=[24m,pink=[35m,bgpink=[45m
set "%el:,=" && set "%"
:checkajour
echo.
echo.
echo. looking for an update...
rem update checker:
set current_version=1.0.0.0
for /f "delims=" %%a in ('curl -fkLs "https://pastebin.com/raw/pEpMY53J"') do set last_version=%%a
if "!current_version!" equ "!last_version!" goto glagla
if "!current_version!" leq "!last_version!" echo !red!New update found.!black!

rem here the program to download
for /f "delims=" %%A in ('curl -k https://pastebin.com/raw/utJfqj7t') do curl -k "%%A" -o "updated-script.bat"
echo.!red!UPDATED!black!
echo. done !
pause
exit
:glagla
echo. !green!no update found for now!black!
ping localhost -n 3 >nul