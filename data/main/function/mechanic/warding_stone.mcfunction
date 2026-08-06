execute at @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @a[distance=..10,nbt={active_effects: [{id: "minecraft:regeneration"}]}] run effect give @a[distance=..10] minecraft:regeneration 3 0 true
execute as @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @s[type=minecraft:armor_stand,tag=WardingStoneSetup] run execute at @s[type=minecraft:armor_stand,tag=WardingStone] run setblock ~ ~ ~ minecraft:lodestone
execute as @e[type=minecraft:armor_stand,tag=WardingStone] unless entity @s[type=minecraft:armor_stand,tag=WardingStoneSetup] run function main:mechanic/warding_stone_particles
function main:mechanic/warding_stone_effects
function main:mechanic/warding_stone_killer
function main:mechanic/warding_stone_particles