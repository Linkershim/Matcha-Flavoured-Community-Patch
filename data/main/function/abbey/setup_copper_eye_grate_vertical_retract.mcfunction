setblock ~ ~ ~ target
fill ^-1 ^ ^-1 ^1 ^ ^-2 minecraft:waxed_weathered_copper_grate
setblock ^1 ^ ^ minecraft:waxed_weathered_copper_grate
setblock ^-1 ^ ^ minecraft:waxed_weathered_copper_grate
execute if block ~ ~ ~ target run tag @n[type=marker] add marker_setup