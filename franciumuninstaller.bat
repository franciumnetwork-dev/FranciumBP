@echo off
setlocal
color 0a
echo "__________.__         __________                __  .__                    ____  __.__.__  .__                "
echo "\______   \__| ____   \______   \_______  _____/  |_|  |__   ___________  |    |/ _|__|  | |  |   ___________ "
echo " |    |  _/  |/ ___\   |    |  _/\_  __ \/  _ \   __\  |  \_/ __ \_  __ \ |      < |  |  | |  | _/ __ \_  __ \"
echo " |    |   \  / /_/  >  |    |   \ |  | \(  <_> )  | |   Y  \  ___/|  | \/ |    |  \|  |  |_|  |_\  ___/|  | \/"
echo " |______  /__\___  /   |______  / |__|   \____/|__| |___|  /\___  >__|    |____|__ \__|____/____/\___  >__|   "
echo "        \/  /_____/           \/                         \/     \/                \/                 \/       "
echo.
echo.
echo Are you sure you want to uninstall? (Y/N)
set /p choice=
if /I "%choice%" EQU "Y" (
    echo.
    echo Thank you for using FranciumBP!!!
    pause
    del /F /Q "franciumBP.bat" >nul 2>&1
    del /F /Q "franciuminstaller.bat" >nul 2>&1
    del /F /Q "franciumuninstaller.bat" >nul 2>&1
    cd /d "%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup\"
    del /F /Q "startup.bat" >nul 2>&1
    del /F /Q "startup.bat.new" >nul 2>&1
    exit
) else (
exit
)

endlocal
