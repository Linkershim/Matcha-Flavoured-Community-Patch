execute as @e[type=minecraft:skeleton] run attribute @s minecraft:max_health base set 10
execute as @e[type=minecraft:stray] run attribute @s minecraft:max_health base set 10
execute as @e[type=minecraft:parched] run attribute @s minecraft:max_health base set 10
#Fast Zombies
execute as @e[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.4
execute as @e[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:step_height base set 1
#Husk
execute as @e[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.28
execute as @e[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:attack_damage base set 7