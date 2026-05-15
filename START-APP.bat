@echo off
echo Starting Employee Management System...
echo.
echo 1) MySQL must be running
echo 2) Backend  - http://localhost:8080
echo 3) Frontend - http://localhost:4201
echo.

start "Backend" cmd /k "%~dp0start-backend.bat"
timeout /t 4 /nobreak >nul
start "Frontend" cmd /k "%~dp0start-frontend.bat"

echo Two windows opened. Open browser: http://localhost:4201
pause
