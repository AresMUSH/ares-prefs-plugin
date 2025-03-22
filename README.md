# RP Preferences

## Status

**Supported** Although not part of the main Ares code release, this is a supported plugin.  Report any problems you encounter: https://aresmush.com/feedback

See release notes to determine which versions of AresMUSH are compatible.

## Overview

The RP preferences system provides a way to record RP preferences in a yes/no/maybe fashion with detailed notes.  You can view preferences, which are stored as a free-form text field:

    +==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+
    RP Preferences for Mary
    
    Adventure! Intrigue!
    ------------------------------------------------------------------------------

And find players with specific preferences. 

    +==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+
    RP Preferences - Adventure
    Mary - Adventure! Intrigue!
    John - Action and adventure.
    +==~~~~~====~~~~====~~~~====~~~~=====~~~~=====~~~~====~~~~====~~~~====~~~~~==+

## Web Portal

Preferences show up on player and character profiles, and can be edited through the portal. There's also a preferences summary that shows all characters.

## Installation

1. In the game, run `plugin/install <github url>`.
2. Add the RP preferences summary to the [web portal navbar](https://aresmush.com/tutorials/config/website.html#changing-the-navbar). Under 'Directory' is a good place to start, but it can go anywhere.

```
- title: RP Preferences
  route: prefs
```

## Uninstalling

Removing the plugin requires some code fiddling.  See [Uninstalling Prefs](Uninstalling.md).

## License

Same as [AresMUSH](https://aresmush.com/license).