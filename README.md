# update-r-packages

Automatable R script to update installed R packages

The project is structured to be scheduled with Windows Task Manager. The files 
`schedule.bat` and `unschedule.bat` will schedule and unschedule the task, but 
the task will need further editing once scheduled because the schtasks command 
does not permit setting all necessary options.

# install

1. edit `schedule.bat` to reflect correct user account.
2. edit `update_r_packages.R` to reflect desired library location.
3. run `schedule.bat` to register the task with task manager.
4. edit the task in task manager to run when user not logged in.
