@echo off
REM This batch file moves app_new_version.exe to the destination and renames it to Cosmo-Bypass.exe

REM Define the source file and destination path
set "source=app_new_version.exe"
set "destination=Cosmo-Bypass.exe"

REM Check if the source file exists
if exist "%source%" (
    REM Move and rename the file
    move "%source%" "%destination%"
    echo File has been moved and renamed to %destination%.

    REM Open the new executable
    start "" "%destination%"
) else (
    echo Source file %source% does not exist.
)

REM Pause to keep the command window open
pause
