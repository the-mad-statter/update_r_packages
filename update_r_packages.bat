@echo off
cd %~dp0
R CMD BATCH --no-save update_r_packages.R
R CMD BATCH --no-save mail_update_r_packages_rout.R

