#!/bin/bash

while true; do
    echo "Starting Minecraft Fabric Server..."
    echo "Using JAR file: ${JAR_FILE}..."
    echo "Press Ctrl+C to stop the server and exit the auto-restart loop."
    echo "---------------------------------------------"

    # Replace $JAR_FILE with the name of your Fabric server JAR file
    # Remove the "nogui" argument if you want to run the server with the GUI (not recommended for performance reasons)
    # You can also adjust the memory allocation flags (-Xmx and -Xms) as needed for your server's performance requirements
    java -Xmx1024M -Xms1024M -jar ${JAR_FILE} nogui

    echo "Server stopped or crashed! Restarting in 10 seconds..."
    sleep 10
done