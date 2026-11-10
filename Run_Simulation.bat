@echo off
title HFS VINA - PAS 3D Simulation Launcher
cd /d "%~dp0"
echo ========================================================
echo   HFS VINA - INNOVATION TEAM
echo   PAS 3D Simulation (Smart Assembly Station)
echo ========================================================
echo.
echo Dang mo mo phong 3D tren trinh duyet...
start "" "http://localhost:8080"
timeout /t 2 >nul
netstat -ano | findstr :8080 >nul
if %errorlevel% neq 0 (
    echo Khoi chay Local Server tai cong 8080...
    python -m http.server 8080
)

