execute at @s run effect give @e[type=#minecraft:undead,distance=..16] minecraft:slowness 2 0 true
execute if stopwatch 1s 1.. run function main:effects/ward_undead_weak