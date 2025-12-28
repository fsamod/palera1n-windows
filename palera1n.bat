@echo off
setlocal

:: Define the folder name and path
set "FOLDER_NAME=palera1n-windows"
set "TARGET_DIR=%USERPROFILE%\Desktop\%FOLDER_NAME%"

:: Create the directory if it doesn't exist
if not exist "%TARGET_DIR%" (
    echo Creating folder: %TARGET_DIR%
    mkdir "%TARGET_DIR%"
) else (
    echo Folder already exists.
)

echo.
echo Starting downloads...
echo ----------------------------------------------------

:: Download balenaEtcher
echo Downloading balenaEtcher...
curl -L "https://github.com/balena-io/etcher/releases/download/v2.1.4/balenaEtcher-2.1.4.Setup.exe" -o "%TARGET_DIR%\balenaEtcher-2.1.4.Setup.exe"

echo.

:: Download palen1x ISO
echo Downloading palen1x ISO...
curl -L "https://github.com/palera1n/palen1x/releases/download/v1.2.1/palen1x-v1.2.1-x86_64.iso" -o "%TARGET_DIR%\palen1x-v1.2.1-x86_64.iso"

echo ----------------------------------------------------
echo Downloads complete! 
echo Files are located in: %TARGET_DIR%
echo.
pause