execute in minecraft:the_end run summon item 0 100 0 {Age:-32768,Item:{id:"minecraft:nether_star",count:1}}
tellraw @a {"text":"Evil has been banished from the surface.","color":"gray"}
scoreboard players set gamerule gamerule_safe_surface 1
execute if score current_world_settings_difficulty difficulty_score matches 2 run tellraw @a ["",{"text":"Game is now set to "},{"text":"Hard","bold":true,"color":"red"},{"text":"\n"},{"text":"(You can change this if you want)","color":"gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 1 run tellraw @a ["",{"text":"Game is now set to "},{"text":"Normal","bold":true,"color":"gold"},{"text":"\n"},{"text":"(You can change this if you want)","color":"gray"}]
execute if score current_world_settings_difficulty difficulty_score matches 1 run difficulty normal
execute if score current_world_settings_difficulty difficulty_score matches 2 run difficulty hard
execute store result score current_world_settings_difficulty difficulty_score run difficulty