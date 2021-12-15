@echo off
if "%1"=="runas" (
  cd %~dp0
  SCHTASKS /DELETE /TN "themadstatter\update_r_packages"
  pause
  exit
) else (
  powershell Start -File "cmd '/K %~f0 runas'" -Verb RunAs
)
