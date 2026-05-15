@echo off
title Employee System - Backend
cd /d "%~dp0emp_backend"

set "JAVA_HOME=C:\Program Files\Java\jdk-25"
if not exist "%JAVA_HOME%\bin\java.exe" (
    echo ERROR: Java not found at %JAVA_HOME%
    echo Install JDK 25 or edit JAVA_HOME in start-backend.bat
    pause
    exit /b 1
)

echo Starting Spring Boot backend on http://localhost:8080
echo Keep this window open.
echo.
call mvnw.cmd spring-boot:run
pause
