aerofs-ts-winsrv-sched-task
---
As of AeroFS v0.8.71 the Team Server software on Windows does not run as a service. If you log out of the account which it was installed, it stops syncing. As a workaround I have created a batch script to be used with scheduled tasks. This script will check to see if the process is running. If running nothing happens. If the process is not running it attempts to start it.

Disclaimer:
---
This script has not been tested or endorsed by AeroFS. Use at your own risk. 

Usage:
---
+ Copy the batch script to your server. I put mine in D:\AeroFS-TS\batch.
+ Make a logs folder. I put mine in D:\AeroFS-TS\logs
+ Edit the batch script replacing all instances of "UserAccount" with the name of the account you installed the Team Server software.
+ Create the scheduled task. In security options make sure to use option: "Run whether user is logged in or not"

When the task runs it logs whether the process was running or not. 
