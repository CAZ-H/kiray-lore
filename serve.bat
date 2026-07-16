@echo off
setlocal
cd /d "%~dp0"

where node >nul 2>nul
if errorlevel 1 (
    echo Node.js not found. Run install.bat first ^(or install Node.js 22+ from https://nodejs.org/^).
    pause
    exit /b 1
)

if not exist node_modules (
    echo Dependencies not installed yet. Run install.bat first.
    pause
    exit /b 1
)

echo === Wiki preview: http://localhost:8080/kiray-lore/  ^(press Ctrl+C to stop^)
:serve
call npx quartz build --serve -d Documents --baseDir /kiray-lore
echo.
echo === Server exited ^(the file watcher can crash on renamed or locked files^). Restarting in 3 seconds, Ctrl+C to stop...
timeout /t 3 /nobreak >nul
goto serve
