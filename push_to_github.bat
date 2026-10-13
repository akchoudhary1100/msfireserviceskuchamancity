@echo off
title Push MS Fire Safety to GitHub
cd /d "%~dp0"
echo ========================================================
echo Pushing all files including ASSETS to GitHub:
echo https://github.com/akchoudhary1100/msfireserviceskcity.git
echo ========================================================
echo.
set "PATH=%LOCALAPPDATA%\MinGit\cmd;%PATH%"

git add -A
git commit -m "Update MS Fire Services website styling, colors, and assets"
git push -u origin main --force
echo.
if %ERRORLEVEL% equ 0 (
    echo ========================================================
    echo [SUCCESS] All files and assets uploaded successfully!
    echo ========================================================
) else (
    echo ========================================================
    echo [AUTHENTICATION REQUIRED]
    echo Please sign in via the browser window or enter your GitHub credentials.
    echo ========================================================
)
echo.
pause
