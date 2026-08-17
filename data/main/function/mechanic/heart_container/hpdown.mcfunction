# Executeing as @s for multiplayer reasons, Im trying to figure out any reason why this might not work in multiplayer so im being extra cautious with who is running the command
# Remove deaths score and tag to make sure this isn't run again
execute as @s run scoreboard players set @s deaths 0 
execute as @s run tag @s remove remove_hearts
#Remove the hearts and run the set max hp function (This will likley be done as the player is on the death screen)
execute as @s run scoreboard players remove @s Hearts 2
execute as @s run function main:mechanic/heart_container/set_max_hp