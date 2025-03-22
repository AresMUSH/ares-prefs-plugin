## Uninstalling Prefs

Ares plugins plug IN easily, but taking them out requires a bit of code fiddling.

1. Run the following command with a coder character: `Prefs.uninstall_plugin(client)`

2. Manually remove all plugin's files from your server (and GitHub fork, if applicable), including:
    * aresmush/plugins/prefs
    * aresmush/game/config/prefs.yml
    * Web portal files - See the /webportal folder in this repo for a specific list of files.

3. [Restart the game engine](https://aresmush.com/tutorials/manage/shutdown.html).