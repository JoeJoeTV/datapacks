# TPlus

This datapack adds varius tp related commands.

# Features
* Persmissions for every command
* Spawn System
* TPA System
* Home System
* Warp System
* Back System

# Commands

## Admin Commands
* SetWarp
  * Syntax: /trigger setwarp set <warp id(max. 7)>
  * Sets the Position for a Warp
* SetSpawn
  * Syntax: /trigger setspawn
  * Sets the position of the spawn for /trigger spawn

## User Commands
* Back
  * Syntax: /trigger back
  * Teleports the player back to his last death point (if he has one)
* Spawn
  * Syntax: /trigger spawn
  * Teleports the player to the spawn set with setspawn
* Warp
  * Syntax: Trigger warp set <warp id(max. 7)>
  * Teleports the player to the specified warp set by the admin with setwarp
  
### Home System
Each Player can set as many homes as are set with the permission(max. 7)
  
Commands: 
* SetHome
  * Syntax: /trigger sethome set <home id>
  * Sets specified home to the current position
* GetHome
  * Syntax: /trigger gethome set <home id>
  * Prints the coordinates of the specified home in chat
* Home
  * Syntax: /trigger home set <home id>
  * Teleports the player to the specified home

### TPA System
Player can send a request to teleport to another player.

Commands:
* TPA
  * Syntax: /trigger tpa set <player ID>
  * Sends a Teleport-Request to the Player with the specified ID (Player ID's from [PistonLib])
* TPAccept
  * Syntax: /trigger tpaccept
  * Accepts a Teleport-Request if available.
* TPDeny
  * Syntax: /trigger tpdeny
  * Denies a Teleport-Request if available.
* TPCancel
  * Syntax: /trigger tpcancel
  * Cancels a previously sent Teleport-Request if available.
