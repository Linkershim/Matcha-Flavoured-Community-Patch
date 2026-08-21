# For a new version, we wipe their recipe unlock advancements so they can learn new things that were added or tweaked (or bugged)
advancement revoke @s from minecraft:recipes/root
tellraw @a ["",{"text":"[!]","bold":true,"color":"green"},{"text":":","color":"green"},{"text":" A new player has been ","color":"gray"},{"text":"updated"}]

# Revoke Mechanics advancements which were not removed properly in previous versions
advancement revoke @s only main:mechanics/heart_container_obtained

# Players start with Hearts score of 0, which means they would be in-debt 10 hearts before they could earn new ones, so if they are below 20 (the minimum) we set it to the minimum
execute if score @s Hearts <= minimum_hearts Hearts run scoreboard players set @s Hearts 20

# Set player's version number to current version
scoreboard players operation @s version_number = current_version version_number

# Announce that a player has been updated
tellraw @a [{"text":"[!]","bold":true,"color":"green"},{"text":":","color":"green"},{"text":" A new player has been ","color":"gray"},{"text":"updated"}]