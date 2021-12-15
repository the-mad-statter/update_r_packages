@echo off
if "%1"=="runas" (
  cd %~dp0
  SCHTASKS /CREATE /SC DAILY /TN "themadstatter\update_r_packages" /TR "%~dp0update_r_packages.bat" /ST 04:00 /RU schuelke
  pause
  exit
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
