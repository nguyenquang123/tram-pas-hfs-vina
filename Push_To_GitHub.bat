@echo off
title Push to GitHub - HFS VINA
cd /d "%~dp0"
echo ========================================================
echo   DANG DAY MA NGUON LEN GITHUB...
echo   Repo: https://github.com/nguyenquang123/tram-pas-hfs-vina
echo ========================================================
echo.
"%LOCALAPPDATA%\MinGit\cmd\git.exe" push -u origin main
echo.
if %errorlevel% equ 0 (
    echo ========================================================
    echo   THANH CONG! Ma nguon da duoc day len GitHub!
    echo ========================================================
) else (
    echo ========================================================
    echo   Co loi xay ra hoac can dang nhap GitHub.
    echo ========================================================
)
pause

