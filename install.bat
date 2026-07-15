@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
    echo Node.js not found. Install Node.js 22 or later from https://nodejs.org/ then re-run this script.
    pause
    exit /b 1
)

echo === Installing npm dependencies...
call npm ci
if errorlevel 1 (
    echo npm ci failed. See output above.
    pause
    exit /b 1
)

echo === Installing Quartz plugins...
call npx quartz plugin install
if errorlevel 1 (
    echo Quartz plugin install failed. See output above.
    pause
    exit /b 1
)

echo.
echo === Install complete. Run serve.bat to preview the wiki at http://localhost:8080
pause
