execute at @s run effect give @e[type=#minecraft:undead,distance=..20] minecraft:slowness 1 1 true
execute if stopwatch 0.5s 0.5.. run function main:effects/ward_undead_weak