@echo off
REM Start the local SQL Server Docker Compose environment from the repository root.
cd /d "%~dp0"
docker compose up -d
if %errorlevel% neq 0 (
  echo Docker Compose failed with exit code %errorlevel%.
  exit /b %errorlevel%
)
echo Docker Compose started successfully.
docker compose ps
pause
