execute as @e[type=minecraft:creeper,tag=!SpawnChecked] run execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"can_see_sky":true}}} run tag @s add SpawnForbiden
execute as @e[type=minecraft:creeper,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[type=minecraft:spider,tag=!SpawnChecked] run execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"can_see_sky":true}}} run tag @s add SpawnForbiden
execute as @e[type=minecraft:spider,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[type=minecraft:witch,tag=!SpawnChecked] run execute if predicate {"condition":"minecraft:entity_properties","entity":"this","predicate":{"location":{"can_see_sky":true}}} run tag @s add SpawnForbiden
execute as @e[type=minecraft:witch,tag=!SpawnChecked] run tag @s add SpawnChecked
execute as @e[tag=SpawnForbiden] run tp @s ~ ~-10000 ~
execute at @a if entity @p[advancements={main:end/kill_dragon=true}] run function main:mechanic/safe_surface