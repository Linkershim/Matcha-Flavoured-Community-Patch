# Matcha Flavoured Community Patch
This fork of Klei's Matcha Flavoured serves as a place for bugfixes, implementation improvements and development utilities to be applied over the base project.
The aim is to provide an easier base for people to fork into their own remixes and addons, in a place where Klei and other developers can look through our contributions.

## Bugfixes
### Eggsploit fix
Matcha uses Spawn Eggs with custom stored entities for many of it's Custom Items, and gives out normal spawn eggs from trades.
These Spawn Eggs can be used on Mob Spawners and Trial Spawners to change their spawned entity to the one stored in the egg.
Beyond being able to create Villager and Farm Animal spawners, this also happens with the Custom Items e.g. the Bedrock Buster creating a Mob Spawner which spawns TNT.
To prevent this exploit I have added custom advancements and functions to handle using other items to spawn mobs:
* Added Macro for "entity_item" custom items, which allows a single advancement and a Macro to summon any mob with custom nbt data
* Re-implemented custom blocks such as the Warding Stone and Bedrock Buster to use invisible item frames instead of a spawn egg
* Re-implemented the Amnestic from the ground up, see below in "Implementation Improvements"
* Bulk Blocks are now poisonous potatoes which return a stack of blocks when consumed, like how drinks return a bottle
* Changed recipes/trades to give custom items which use this new system
### Fixed Vanilla Elytra being repaired with Bronze
Replaced the Elytra found on End Ships with a Matcha-ified version which:
* Has 600 Durability
* Can be repaired with Honeycomb or Feathers

## Implementation Improvements
### Amnestic
Made the mechanics more intuitive.
* Is now used on the Villager itself to remove profession
* Villagers make a sound when an Amnestic is used on them
* Can be consumed by players, this resets their recipe advancements and recipe book (because funny)
### Bulk Blocks
Now unpacked with a right click instead of placing a stack of items on the ground
* Using the item anywhere unpacks it
* Items appear directly in your inventory if you have space
* Now plays an unpacking sound
### Enderman Antigrief
A planned feature for Matcha that Klei mentioned not knowing how to do yet.
* Removed all blocks from the list that Enderman can pick up, except for Pumpkins, Melons and TnT
### Multiplayer Support: Player Updating
Changed the implementation to be more efficient: using less commands and improving performance
* The server now checks all players using a looping function instead of each player triggering an advancement to initiate the check
* Checks if each player is below the latest version once per loop, then runs all functions based on that instead of checking for every function
* Works without having to set the player's version score to 0 upon first join
* Revokes all recipe Advancements with one command instead of doing each one individually
* Sets the updated version score directly


## Development Utilities
### Loot Helper
A Loot Table for obtaining each custom item in Matcha Flavoured, for:
* Obtaining Matcha versions of items in Creative Mode
* Using as a drop-in item replacement when adding compatibility to other mods' Loot Tables
* Referencing Matcha's component changes when adding new recipes, trades e.t.c.