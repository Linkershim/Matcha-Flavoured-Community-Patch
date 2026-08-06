execute as @e[type=#main:mundane_hostiles,tag=!SafeSurfaceSpawnChecked] run execute if predicate main:surface_spawn run tag @s add SpawnForbiden
execute as @e[type=#main:mundane_hostiles,tag=!SafeSurfaceSpawnChecked] run tag @s add SafeSurfaceSpawnChecked
execute as @e[tag=SpawnForbiden] run tp @s ~ ~-10000 ~