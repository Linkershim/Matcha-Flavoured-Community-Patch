#This was done to support multiplayer called by main:advancement/multiplayer_support/check_if_new_player_has_joined
#When people join, a world is not reloaded, and they are never added to important scoreboards
#So I run a location advancement to check every 20t if there are any players who have joined, who have not been updated
#Because after you join a server, the world will not reload to add you
#This checks if they have been added at all (They won't be if its their first time playing, or after an update)
#And if they haven't, we clear all recipe unlocks (So they can get updated recipes) and then set their version number to be the current one, so it doesn't run again

#First, take away the advancment so it keeps checking
advancement revoke @a only main:multiplayer_support/check_if_new_player_has_joined

#If the player is not on the version score board, set their score to zero, otherwise, leave it
execute at @a run execute unless score @p version_number >= zero version_number run scoreboard players set @p version_number 0

#If the player's version number < current, add them to the scoreboard
execute if score @p version_number < current_version version_number run function main:setup/scoreboard
#If the player's version number is less than the current version, run the amnesia function (remove all recipe unlock advancements)
execute if score @p version_number < current_version version_number run function main:setup/revoke_all_recipe_unlock_advancements
