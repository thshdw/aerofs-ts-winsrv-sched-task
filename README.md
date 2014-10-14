aerofs-ts-winsrv-sched-task
==========
As of AeroFS v0.8.71 the Team Server software does not run as a service. If you log out of the account which it was installed it stops syncing. As a workaround I have created a batch script to be used with scheduled tasks. This script will check to see if the process is running, if so nothing happens. If the process is not running it attempts to start it.

Disclaimer:
This script has not been tested or endorsed by AeroFS. Use at your own risk. 

Usage:
Copy the batch script to your server, I'm using d:\AeroFS-TS\batch
Make a logs folder, I'm using d:\AeroFS-TS\logs
Create the scheduled task. In security options make sure to use option: "Run whether user is logged in or not"
