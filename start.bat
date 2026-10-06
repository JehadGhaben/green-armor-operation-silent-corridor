@echo off
setlocal

echo.
echo GREEN ARMOR - OPERATION SILENT CORRIDOR
echo Building and starting the cyber range...
echo.

docker compose up -d --build
if errorlevel 1 goto :error

docker compose ps
echo.
echo Enter the workstation with:
echo   docker exec -it ga-attacker bash
goto :eof

:error
echo.
echo Failed to start the range. Confirm Docker Desktop is running.
exit /b 1
