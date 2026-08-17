#On max Electrum, even husks are slowed
execute at @s run effect give @e[type=#main:warding_targets,predicate=!main:wearing_copper_armour,distance=..24] minecraft:slowness 1 1 true
execute at @s run damage @n[type=#main:warding_targets,type=!wither,predicate=!main:wearing_copper_armour,distance=..12] 2 minecraft:out_of_world
execute at @e[type=#main:warding_targets,type=!wither,predicate=!main:wearing_copper_armour,distance=..24] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .1 .3 .1 .02 1
#Anti-Warding effects
execute at @e[type=#main:warding_targets,type=!wither,predicate=main:wearing_copper_armour,distance=..12] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .1 .3 .1 .02 1
execute at @s run damage @n[type=#main:warding_targets,type=!wither,predicate=main:wearing_copper_armour,distance=..8] 1 minecraft:out_of_world
execute at @s run effect give @n[type=#main:warding_targets,predicate=main:wearing_copper_armour,distance=..12] minecraft:slowness 1 0 true

#Wither
execute at @s run damage @n[type=wither,distance=..16] 2 minecraft:out_of_world
execute at @n[type=wither,distance=..16] run particle minecraft:soul_fire_flame ~ ~2.5 ~ .5 .5 .5 .02 1