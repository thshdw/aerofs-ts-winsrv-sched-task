@echo off
FOR /F %%x IN ('tasklist /NH /FI "IMAGENAME eq aerofsd.exe"') DO IF "%%x"=="aerofsd.exe" goto isRunning

:isStopped
echo Date:%DATE:/=-% Time:%TIME::=-% --- AeroFS Team Server is NOT running attempting to start... >> D:\aeroFS-TS\logs\AeroFS-TS.log
C:\Users\UserAccount\AppData\Roaming\AeroFSTeamServerExec\aerofsd.exe "C:\Users\UserAccount\AppData\Local\AeroFSTeamServer"
goto END

:isRunning
echo Date:%DATE:/=-% Time:%TIME::=-% --- AeroFS Team Server is already running >> D:\aeroFS-TS\logs\AeroFS-TS.log
goto END

:END
