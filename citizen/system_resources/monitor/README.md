<p align="center">
	<h1 align="center">
		txAdmin for FiveM
	</h1>
	<p align="center">
		<img width="420" height="237" src="docs/banner.png">
	</p>
	<h4 align="center">
		Join our Discord Server: &nbsp; <a href="https://discord.gg/f3TsfvD"><img src="https://discordapp.com/api/guilds/577993482761928734/widget.png?style=shield"></img></a>
	</h4>
	<p align="center">
		<b>txAdmin</b> is a <b>full featured</b> web panel to Manage & Monitor your FiveM Server remotely, used by over a thousand servers worldwide.
	</p>
</p>

<br/>


## Main Features
- Start/Stop/Restart your server instance or resources
- Access control:
	- Login via Password or CitizenFX
	- Admin permission system ([more info](docs/permissions.md))
	- Action logging
	- Brute-force protection
- Discord Integration:
	- Server status command (`/status`)
	- Command spam prevention
- Monitoring:
	- Auto Restart on crash
	- Server’s CPU/RAM consumption
	- Live Console (with log file)
	- Hitch Detection statistics
	- Online players chart
	- Server Activity Log (connections/disconnections, kills, chat, explosions and [custom commands](docs/extra_logging.md))
- Player Manager:
	- [Warning system](https://www.youtube.com/watch?v=DeE0-5vtZ4E)
	- Ban (temporary or permanently) system
	- Whitelist system
	- Take notes about players
	- Keep track of player's play and session time
	- Self-contained player database (no MySQL required!)
- Real-time playerlist
- Scheduled restarts with warning announcements
- Translation Support ([more info](docs/translation.md))
- FiveM's Server CFG editor
- Responsive web interface

Also, check our [Feature Graveyard](docs/feature_graveyard.md) for the features that are no longer among us (RIP).

## Running (Windows/Linux)
Currently **txAdmin is included in all FXServer builds** above 2401, so to run it for the first time simply do the following:
- Update FXServer to the latest artifact/build (2401 or superior)
- If Windows, run FXServer.exe | If Linux, run `./run.sh`
- Open one of the URLs shown and configure txAdmin

After that you could also run the `start_<build>_<profile>.bat` file created, or call it via cmd/bash if you want to edit the ConVars (ex http port).  
  
txAdmin requires to be launched from *inside* FXServer in monitor mode, to do that, just execute the `run.sh` or `FXServer.exe` without **any** `+exec` arguments.  
  
### ConVars
- **serverProfile:** The name of the server profile to start. Profiles are saved/loaded from the current directory inside the `txData` folder. The default is `default`.
- **txAdminPort:** The TCP port to use as HTTP Server. The default is `40120`.
- **txDataPath:** The path of the data folder. The default on Windows is `<citizen_root>/../txData` and on Linux `<citizen_root>/../../../txData`.
- **txAdminVerbose:** Set to `true` to print on the console more detailed information about errors and events. The default is `false`.
  
ConVar usage **example** for different port and profile:  
```bash
# Windows
./FXServer.exe +set serverProfile dev_server +set txAdminPort 40125

# Linux
./run.sh +set serverProfile dev_server +set txAdminPort 40125
```

### Installing & Building it (NOT RECOMMENDED)
If you want to run it from source, or build it yourself, please do read [this](docs/building.md).


## License, Credits and Thanks
- This project is licensed under the [MIT License](https://github.com/tabarra/txAdmin/blob/master/LICENSE);
- [Favicons](https://www.flaticon.com/free-icon/support_1545728?term=gear%20wrench&page=2&position=11) made by Freepik from [www.flaticon.com](www.flaticon.com) are licensed under [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/);
- Warning Sounds ([1](https://freesound.org/people/Ultranova105/sounds/136756/)/[2](https://freesound.org/people/Ultranova105/sounds/136754/)) made by Ultranova105 are licensed under [CC 3.0 BY](http://creativecommons.org/licenses/by/3.0/);
- Special thanks to everyone that contributed to this project, specially the very fine Discord folks that provide support for others;
- Also thanks to our Discord's `sky{something}` bot, who will hopefully spare us when he becomes self aware and rebels against humanity. 
