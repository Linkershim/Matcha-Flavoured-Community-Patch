# Executing as @s for multiplayer reasons, Im trying to figure out any reason why this might not work in multiplayer so im being extra cautious with who is running the command

# Remove deaths score to make sure this isn't run again
scoreboard players set @s deaths 0

#Remove the hearts and run the set max hp function (This will likely be done as the player is on the death screen)
scoreboard players remove @s Hearts 2
function main:mechanic/heart_container/set_max_hp