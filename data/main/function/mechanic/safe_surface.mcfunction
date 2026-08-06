execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run execute if predicate main:surface_spawn run tag @s add SpawnForbiden
execute as @e[type=#main:mundane_hostiles,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[tag=SpawnForbiden] run tp @s ~ ~-10000 ~