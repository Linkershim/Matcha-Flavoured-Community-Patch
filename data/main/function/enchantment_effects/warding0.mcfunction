execute at @s run effect give @n[type=#main:warding_targets_slowed,predicate=!main:wearing_copper_armour,distance=..8] minecraft:slowness 1 0 true
execute at @s run damage @n[type=#main:warding_targets,type=!wither,predicate=!main:wearing_copper_armour,distance=..3] 1 minecraft:out_of_world
execute at @n[type=#main:warding_targets,type=!wither,predicate=!main:wearing_copper_armour,distance=..8] run particle minecraft:soul_fire_flame ~ ~1.5 ~ .1 .3 .1 .02 1
#Anti-Warding Particles
execute at @n[type=#main:warding_targets,type=!wither,predicate=main:wearing_copper_armour,distance=..8] run particle minecraft:electric_spark ~ ~1.5 ~ .25 .3 .25 .02 1