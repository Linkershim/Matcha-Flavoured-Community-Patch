setblock ~ ~ ~ target
setblock ~ ~-1 ~ minecraft:iron_chain[axis=y]
setblock ~ ~-2 ~ minecraft:lantern[hanging=true]
execute if block ~ ~ ~ target run tag @n[type=marker] add marker_setup