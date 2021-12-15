@echo off
cd %~dp0
R CMD BATCH --no-save update_r_packages.R
