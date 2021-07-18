# RP Preferences

## Status

**Supported** Although not part of the main Ares code release, this is a supported plugin.  Report any problems you encounter: https://aresmush.com/feedback

Designed for AresMUSH 1.0

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

In the game, run `plugin/install <github url>`.

See additional setup instructions below.

## Configuration

Once installed, go to the web portal setup screen.  Edit `prefs.yml` and you can configure the following setings.

## categories

You can configure the list of categories that players can set a preference for.

## Uninstalling

Removing the plugin requires some code fiddling.  See [Uninstalling Prefs](Uninstalling.md).

## License

Same as [AresMUSH](https://aresmush.com/license).