execute if score gamerule gamerule_safe_surface matches 1 run function main:mechanic/safe_surface
execute as @e[type=minecraft:creeper,tag=!SpawnChecked] run execute if predicate main:sky_spawn run tag @s add SpawnForbiden
# execute as @e[type=minecraft:creeper,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[type=minecraft:spider,tag=!SpawnChecked] run execute if predicate main:sky_spawn run tag @s add SpawnForbiden
# execute as @e[type=minecraft:spider,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[type=minecraft:witch,tag=!SpawnChecked] run execute if predicate main:sky_spawn run tag @s add SpawnForbiden
# execute as @e[type=minecraft:witch,tag=!SpawnChecked] run tag @s add SpawnChecked
# execute as @e[tag=SpawnForbiden] run tp @s ~ ~-10000 ~
execute as @e[tag=SpawnForbiden] run tp @s ~ ~-10000 ~
#No Armour Drops
execute at @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run data merge entity @n[type=#main:mundane_hostiles] {drop_chances:{feet:0.0f,legs:0.0f,chest:0.0f,head:0.0f,mainhand:0.0f}}
#Weak Skeletons
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=#minecraft:skeletons] run attribute @s minecraft:max_health base set 10
#Weak Creepers
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=minecraft:creeper] run attribute @s minecraft:max_health base set 16
#Weak but Fast Cavespiders
execute as @e[type=minecraft:cave_spider,tag=!SpawnChecked] run execute as @e[type=minecraft:cave_spider] run attribute @s minecraft:max_health base set 4
execute as @e[type=minecraft:cave_spider,tag=!SpawnChecked] run execute as @e[type=minecraft:cave_spider] run attribute @s minecraft:movement_speed base set 0.4
#Fast Zombies
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=minecraft:zombie,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.4
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=#minecraft:zombies,nbt={IsBaby:0b}] run attribute @s minecraft:step_height base set 1
#Husk
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:movement_speed base set 0.28
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute as @e[type=minecraft:husk,nbt={IsBaby:0b}] run attribute @s minecraft:attack_damage base set 7
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run tag @s add SpawnChecked
