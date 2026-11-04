@echo off
setlocal
cd /d "%~dp0"

if not exist "node_modules\vite\bin\vite.js" (
  echo Project dependencies are missing.
  echo Install Node.js and pnpm, then run pnpm install in this folder.
  pause
  exit /b 1
)

where node >nul 2>nul
if not errorlevel 1 (
  node "%~dp0node_modules\vite\bin\vite.js" --host 127.0.0.1 --open
  if errorlevel 1 pause
  goto :done
)

set "PORTFOLIO_NODE=%USERPROFILE%\.cache\codex-runtimes\codex-primary-runtime\dependencies\node\bin\node.exe"
if exist "%PORTFOLIO_NODE%" (
  "%PORTFOLIO_NODE%" "%~dp0node_modules\vite\bin\vite.js" --host 127.0.0.1 --open
  if errorlevel 1 pause
  goto :done
)

echo Node.js was not found. Install Node.js 20 or newer, then try again.
pause
exit /b 1

:done
endlocal
