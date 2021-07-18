## Uninstalling Prefs

Ares plugins plug IN easily, but taking them out requires a bit of code fiddling.

1. Open the [tinker](https://aresmush.com/tutorials/code/tinker.html#how-to-tinker) page (Admin -> Tinker) in the web portal with a coder character.

2. Add the following code to the `handle` method of the tinker file.
 
```
   begin 
      Prefs.uninstall_plugin
      Manage.uninstall_plugin("prefs")
      client.emit_success "Plugin uninstalled."
      
    rescue Exception => e
      Global.logger.debug "Error loading plugin: #{e}  backtrace=#{e.backtrace[0,10]}"
      client.emit_failure "Error uninstalling plugin: #{e}"
    end
```

3. Click "Save" on the tinker page.

4. Switch to a game client window and run the `tinker` command.

5. Switch back to the web portal tinker page and click "Reset".

6. Manually remove all plugin's files from your server (and GitHub fork, if applicable), including:
    * aresmush/plugins/prefs
    * aresmush/game/config/prefs.yml
    * Web portal files - See the /webportal folder in this repo for a specific list of files.

7. Run the `load all` command.

8. Run the `website/deploy` command.