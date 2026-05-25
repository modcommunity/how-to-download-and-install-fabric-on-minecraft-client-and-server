A guide on how to download, install, and run [Fabric](https://fabricmc.net/) for both the [Minecraft](https://www.minecraft.net/) client and server. This guide includes instructions for using the GUI installer and command-line method.

[**View Guide On TMC (Recommended Due To Better Formatting)**](https://blog.moddingcommunity.com/how-to-download-install-fabric-for-minecraft-client-server/)

Fabric is a lightweight and modular modding platform for Minecraft that allows players to easily install and manage mods. It is designed to be fast, efficient, and compatible with a wide range of mods, making it a popular choice among Minecraft modders and players alike.

## Table of Contents
- [Requirements](#requirements)
- [Downloading](#downloading)
- [Running & Installing](#running--installing)
    - [Through the GUI Installer](#through-the-gui-installer)
        - [Client Installation](#client-installation)
        - [Server Installation](#server-installation)
    - [Through the Command Line (Linux/PowerShell)](#through-the-command-line-linuxpowershell)
        - [Determine Correct Flags to Pass](#determine-correct-flags-to-pass)
            - [Client Installation](#client-installation-1)
            - [Server Installation](#server-installation-1)
        - [Running the Installer](#running-the-installer)
- [Notes](#notes)
    - [Automatic Restarts](#automatic-restarts)
- [See Also](#see-also)
- [Conclusion](#conclusion)

## Requirements
- A computer running **Windows 10** (or later) or Server, or Linux.
- At least 1 - 2 GBs of free storage space.
- If you're using a hosting provider for your server, make sure they support modded servers and allow you to upload custom files.
- Java
    - Download From: [Adoptium](https://adoptium.net/) or [Oracle](https://www.oracle.com/java/technologies/downloads)

## Downloading
The first thing you'll want to do is download the Fabric installer. This process is fairly simple, but there is a separate server installer that makes the setup process easier for server owners. Therefore, we'll go over both the client and server download process in this section.

### Client Download
Download the generic installer from their website [here](https://fabricmc.net/use/installer).

* **On Windows**: You can download the `.exe` installer. Click the **Download for Windows** button.
* **On Linux/Mac**: You should download the the **universal JAR installer**.
* **NOTE**: The JAR installer can be used on Windows as well!

![Fabric Download](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/download_client01.png)  

On Windows, your file explorer should look like this, with a file named something like `fabric-installer-{VERSION}.jar`.

![Fabric Windows Explorer View Installer](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/win_explorer_installer.png)

### Server Download
For the server, you can either download the generic installer above, or you can download the server launcher JAR directly which will make things quicker.

We will be downloading the server launcher JAR directly:

1. Go to the [Fabric Server Launcher](https://fabricmc.net/use/server) page.
2. Ensure you select the correct **Minecraft Version** (1).
3. Select the correct **Loader Version** (2) and **Installer Version** (2) settings.
    - **Fabric Loader Version** (2): This is the version of the Fabric Loader that will be installed. In most cases, you can leave this as default (latest).
    - **Installer Version** (2): This is the version of the installer that will be downloaded. In most cases, you can leave this as default (latest).
4. Click the **Executable Server (.jar)** button (3) to download the server launcher JAR file.
![Fabric Server Download](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/download_server01.png)

Now save the JAR file to the location where you want to run your server. For example, you may want to create a new folder called `fabric-server` and save the JAR file there.

## Installing
Installing the Fabric client or server is a straightforward process that can be done through the GUI installer or the command line. Below are the instructions for both methods.

### Client
#### Through the GUI Installer
1. Open up the Fabric installer by double-clicking the executable or JAR file you downloaded.
    * If it doesn't open, you may need to right-click the file, select **Open with**, and choose **Java** or **Java(TM) Platform SE binary** from the list of applications.
2. Ensure the **Client** tab is selected at the top-left corner of the installer.
3. If necessary, change the **Minecraft** and **Loader** versions (1) to whatever you want to install. By default, it should be set to the latest version of Minecraft and Fabric Loader.
4. If necessary, change the **Launcher Location** (2) to the location of your Minecraft installation.
    - By default, this should point to the correct location.
5. Ensure the **Create profile** option is checked if you want the installer to create a new profile for you in the Minecraft Launcher.
    - This is recommended to keep things organized, but you can uncheck it if you want to manually create a profile later.
6. Click the **Install** button (3) to start the installation process.
![Fabric Client Installer Setup](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/gui_client_config.png)

#### Through the Command Line (Linux/PowerShell)
Installing the client through the command line is a bit more complex, but may be preferred or necessary for some users. Below are the instructions for installing the Fabric client using the command line.

Before continuing, here are the flags you can pass to the install command to specify what you want to install:

| Argument | Description |
| --- | --- |
| `-dir {DIR_NAME}` | The install directory for the client. This should point to your Minecraft installation directory. If not specified, it will default to the correct location. |
| `-mcversion {MC_VERSION}` | The version of Minecraft to install Fabric for. If not specified, it will default to the latest version. |
| `-loader {LOADER_VERSION}` | The version of the Fabric Loader to install. If not specified, it will default to the latest version. |
| `-launcher {LAUNCHER}` | What launcher to use for the installation. |

Supported values for `{LAUNCHER}` are:
- `win32` - The default Minecraft Launcher on Windows.
- `microsoft_store` - The Minecraft Launcher from the Microsoft Store on Windows.

You may also pass `default` to the versions to use the default values (or just omit the flag(s)), which will be the latest versions at the time of installation.

Now let's go over the installation process:

1. Open your terminal (Linux) or PowerShell (Windows).
    - On Windows, you can right-click in the folder where the installer is located and select **Open in Terminal** or **Open in PowerShell** to quickly navigate to the correct directory.
2. Navigate to the directory where the Fabric installer JAR file is located using the `cd` command.
    - For example:
        - Windows: `cd C:\Users\{USER}\Downloads`
        - Linux: `cd /home/{USER}/Downloads`
3. Run the installer using the following command:
    ```bash
    # On Windows
    java -jar .\fabric-installer-{VERSION}.jar client {FLAGS}

    # On Linux
    java -jar ./fabric-installer-{VERSION}.jar client {FLAGS}
    ```
    - Replace `{VERSION}` with the actual version number of the installer you downloaded.
    - Replace `{FLAGS}` with the appropriate flags based on what you want to install and any specific versions or launcher you want to use.
        - Example:
        ```bash
        java -jar .\fabric-installer-{VERSION}.jar client -mcversion 26.1.2 -loader default -launcher win32
        ```

This will run the installer with the specified options and install Fabric for your Minecraft client.

### Server
#### Through the GUI Installer
If you've downloaded the server launcher directly, all you need to do is double-click the JAR file you downloaded and it will automatically set up and start the server in the directory you ran the installer from.

I personally like renaming the JAR file to something like `fabric-server-launch.jar` to make it more organized since the generic file name is quite long.

If you're looking to run the installer through the CLI, skip to the next section below.

#### Through the Command Line (Linux/PowerShell)
If you've downloaded the generic installer, you can use steps from the client installation section above, but use different arguments instead.

| Argument | Default | Description |
| --- | --- | --- |
| `-dir {DIR_NAME}` | Current Directory |The install directory for the server. This should point to the folder you created for your server. |
| `-mcversion {MC_VERSION}` | Latest | The version of Minecraft to install Fabric for. |
| `-loader {LOADER_VERSION}` | Latest | The version of the Fabric Loader to install. |
| `-downloadMinecraft` | - | Whether to download the Minecraft server jar. |

With that said, replace the `client` argument in the command with `server`. For example:

```bash
# On Windows
java -jar .\fabric-installer-{VERSION}.jar server {FLAGS}

# On Linux
java -jar ./fabric-installer-{VERSION}.jar server {FLAGS}
```

On Linux, here's an example of how to run the installer with specific flags:

```bash
java -jar ./fabric-installer-1.1.1.jar server -dir ./fabric_test01 -mcversion 26.1.2 -downloadMinecraft
```

![Fabric Server Installer CLI Example](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/server_linux_install.png)

### Running
You can now start the client or server with Fabric installed. The process for running the client and server is different, so we'll go over both separately.

#### Client
Simply open the Minecraft Launcher and select the profile that was created during the installation process (if you left the "Create profile" option checked).

The name of this profile is likely something like `fabric-loader-{VERSION}`. You can change this name in the Minecraft Launcher if you want to rename it to something more user-friendly.

After loading into a new world, you can confirm if Fabric is installed by pressing the **F3 key** to open the debug screen. Towards the top-right, you should see a line that shows what version of Minecraft you're running along with the Fabric version in parentheses.

For example, it may say something like `Minecraft 26.1.2 (fabric-loader-{version}/fabric)`.

![Fabric Installed](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/client_confirm.png)

#### Server
To make things easier, we're going to be making a simple wrapper script that will run the server and automatically restart it if it crashes or stops. This is especially useful for servers that are running mods, as they can be more prone to crashing.

With that said, below `${JAR_FILE}` and `%JAR_FILE%` refers to the name of the server launcher JAR file that you downloaded in the steps above (e.g. `fabric-server-launch.jar`). You can also replace the `JAR_FILE` environment variable with the actual file name in the scripts if you prefer. Otherwise, ensure to replace the `JAR_FILE` variable with the correct file name before running the scripts.

##### Windows Wrapper Script
On Windows, we'll be creating a Batch script called [`start-server.bat`](./scripts/start-server.bat) with the following contents:

```batch
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
```

* You can either replace the `%JAR_FILE%` variable with the actual file name of your server launcher JAR (e.g. `fabric-server-launch.jar`), or you can set the `JAR_FILE` environment variable in your system settings to point to the correct file.
* Remove the `nogui` argument if you want to run the server with the GUI, but keep in mind that running with the GUI can cause performance issues and is generally not recommended for servers.

To start the server, you can simply **double-click the new script** through the file explorer. Otherwise, you can run the script through PowerShell. If you need to set the `JAR_FILE` environment variable, you can do so in PowerShell before running the script.

Here's an example of how to set the `JAR_FILE` environment variable in PowerShell and then running the server.

```batch
$env:JAR_FILE = "fabric-server-launch.jar"
.\start-server.bat
```

![Windows Powershell Start Command](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/server_win_start.png)

Here's an example of what the server console (GUI) will look like when running with the wrapper script on Windows:

![Windows Server Started GUI](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/gui_server_started.png)

##### Linux Wrapper Script
On Linux, we'll be creating a Bash script called [`start-server.sh`](./scripts/start-server.sh) with the following contents:

```bash
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
```

* You can either replace the `${JAR_FILE}` variable with the actual file name of your server launcher JAR (e.g. `fabric-server-launch.jar`), or you can set the `JAR_FILE` environment variable in your system settings to point to the correct file.
* Remove the `nogui` argument if you want to run the server with the GUI, but keep in mind that running with the GUI can cause performance issues and is generally not recommended for servers.

To start the server, you can run the script through the terminal. If you need to set the `JAR_FILE` environment variable, you can do so in the terminal before running the script.

```bash
export JAR_FILE="fabric-server-launch.jar"
./start-server.sh
```

![Linux Terminal Start Command](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/raw/main/images/server_linux_start.png)

After creating the script using a command line `nano start-server.sh` or through a text editor, ensure to give the script user execute permissions with `chmod u+x start-server.sh` before running it.


## Notes
### Fabric API Mod (Recommended)
There are many mods that require the [Fabric API](https://www.curseforge.com/minecraft/mc-mods/fabric-api) mod to run properly.

If you are looking to install mods that require the Fabric API, you can download it from CurseForge and place the JAR file in your `mods` folder for both the client and server.

### Using Screen (Linux)
If you're running your server on Linux, you can use the [`screen`](https://man7.org/linux/man-pages/man1/screen.1.html) command to run your server in a detachable session. This allows you to start the server, detach from the session, and keep it running in the background even if you close your terminal.

You can start the server using `screen` with the automatic restart script above like this:

```bash
screen -S mc-fabric ./start_server.sh
```

If you'd like to detach from the screen session while keeping the server running, you can press `Ctrl+A` followed by `D`. To reattach to the session later, use:

```bash
screen -r mc-fabric
```

**NOTE**: If only one session is running, you can simply use `screen -r` to reattach without specifying the session name.

## See Also
* [Fabric Website](https://fabricmc.net/)
* [Fabric GitHub](https://github.com/FabricMC/fabric)
* [Pterodactyl](https://pterodactyl.io/) - A popular, free, and open source game server control panel that allows you to easily manage your self-hosted Minecraft servers (with Fabric support!).

## Conclusion
Fabric is a fantastic modding platform that has powered the Minecraft modding scene for many years. Whether you're looking to install it for your client or set up a modded server, the installation process is straightforward and can be done through either a GUI installer or the command line. With Fabric, you can enjoy a wide variety of mods and custom content in Minecraft.

If you have any questions or are looking for a modding community to be a part of, consider joining our [Discord server](https://discord.moddingcommunity.com)!

Guides we create are always open to edits and improvements, so if you have any suggestions or notice any issues, feel free to contribute by creating a [pull request](https://github.com/modcommunity/-how-to-download-and-install-fabric-on-minecraft-client-and-server/pulls) on our GitHub repository!

Happy modding!