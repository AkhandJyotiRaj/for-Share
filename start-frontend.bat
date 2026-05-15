@echo off
title Employee System - Frontend
cd /d "%~dp0employee frontend final"

if not exist "node_modules\" (
    echo Installing npm packages first time...
    call npm install
)

echo Starting Angular frontend on http://localhost:4201
echo Keep this window open.
echo.
call npx ng serve --port 4201
pause
