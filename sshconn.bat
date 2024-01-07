@echo off
title SSH AutoConnect {USER INPUT}
color 0A

echo Loading...
timeout 3 >nul
cls
echo Hello! type the hostname user (hostname will befilled in as {user}@{hostname selected in menu})
set /p user=
goto inputsshcmd

:inputsshcmd
cls
echo sshcmd in progress...
timeout 2 >nul
cls
title SSH AutoConnect {HOSTNAME SELECT}
Echo Select your hostname
echo 1) raspberrypi.local
echo 2) parrot
echo 3) input my own (not working currently)
set /p number=
if %number% == 1 goto raspihn
if %number% == 2 goto parrothn
if %number% == 3 goto ipmoerror


:raspihn
cls
title SSH AutoConnect {RASPI HOST}
echo sshcmd in progress... 
timeout 2 >nul
echo Done!
cls
ssh %user%@raspberrypi.local
echo           {ERROR}
echo        {exiting now}
timeout 5 
exit

:parrothn
cls
title SSH AutoConnect {PARROT HOST}
echo sshcmd in progress...
timeout 2
echo Done!
cls
ssh %user%@parrot
echo                {ERROR}
echo press any key to exit.&& pause exit >nul



:ipmoerror
cls
title SSH AutoConnect {ERROR OUTOFSERVICE}
echo.II-----------------------------------------------------------II
echo.II-----------------------------------------------------------II
echo.IIII                                                       IIII
echo.IIII                       ERROR                           IIII
echo.IIII             THE CHOOSE YOUR OWN HOSTNAME              IIII
echo.IIII            OPTION DOES NOT WORK CURRENTLY             IIII
echo.IIII                                                       IIII
echo.II-----------------------------------------------------------II
echo.II-----------------------------------------------------------II
echo This will be fixed in soon try the ssh command another way will be fixed soon.
echo press any key to exit.&& pause exit >nul