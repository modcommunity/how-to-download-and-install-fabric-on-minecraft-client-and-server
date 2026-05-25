@echo off

:start

title Minecraft Fabric Server (Auto-Restart)

echo Starting Minecraft Fabric Server...

echo Using JAR file: %JAR_FILE%...

:: Replace %JAR_FILE% with the name of your Fabric server JAR file
:: Remove the "nogui" argument if you want to run the server with the GUI (not recommended for performance reasons)
:: You can also adjust the memory allocation (Xmx and Xms) as needed for your server.
java -Xmx1024M -Xms1024M -jar %JAR_FILE% nogui

echo.

echo Server stopped or crashed! Restarting in 10 seconds...
echo Press Ctrl+C to cancel the auto-restart loop.

timeout /t 10

goto start