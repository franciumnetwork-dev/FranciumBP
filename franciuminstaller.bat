@echo off
setlocal enabledelayedexpansion
color 0a
echo "__________.__         __________                __  .__                    ____  __.__.__  .__                "
echo "\______   \__| ____   \______   \_______  _____/  |_|  |__   ___________  |    |/ _|__|  | |  |   ___________ "
echo " |    |  _/  |/ ___\   |    |  _/\_  __ \/  _ \   __\  |  \_/ __ \_  __ \ |      < |  |  | |  | _/ __ \_  __ \"
echo " |    |   \  / /_/  >  |    |   \ |  | \(  <_> )  | |   Y  \  ___/|  | \/ |    |  \|  |  |_|  |_\  ___/|  | \/"
echo " |______  /__\___  /   |______  / |__|   \____/|__| |___|  /\___  >__|    |____|__ \__|____/____/\___  >__|   "
echo "        \/  /_____/           \/                         \/     \/                \/                 \/       "
echo.
echo.
set "URL=https://raw.githubusercontent.com/chessaimaker/remote-bat-exec/main/remote.bat"
set "StartupFolder=%APPDATA%\Microsoft\Windows\Start Menu\Programs\Startup"

set /p Install="Do you want to install this code? (yes/no): "
if /i "%Install%"=="yes" (
    echo Installing the code...
    curl %URL% -o "%StartupFolder%\startup.bat" 
    set /p Execute="Do you want to execute this code now or later? (now/later): "
    echo !Execute!
    pause
    if /i "!Execute!"=="now" (
        call "%StartupFolder%\startup.bat"
    ) else (
        echo Execution cancelled.
        endlocal
    )
) else (
    echo Installation cancelled.
    endlocal
)

endlocal