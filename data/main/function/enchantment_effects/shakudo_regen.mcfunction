#resets everyone becuase if you take it off, its never called to remove the number
scoreboard players set @a shakudo_regen 0

#I changed this to predicates to help with performance, but I havne't been able to test it on a server. A fellow bug-reporter said that this improved theirs, so I assume this would as well. Let me know
execute if entity @p[predicate=main:armour_enchants/shakudo_chestplate] run scoreboard players add @p shakudo_regen 1
execute if entity @p[predicate=main:armour_enchants/shakudo_leggings] run scoreboard players add @p shakudo_regen 1
execute if entity @p[predicate=main:armour_enchants/shakudo_helmet] run scoreboard players add @p shakudo_regen 1
execute if entity @p[predicate=main:armour_enchants/shakudo_boots] run scoreboard players add @p shakudo_regen 1

execute unless stopwatch shakudo_regen_1 ..29.9 run execute if score @p shakudo_regen matches 1 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_2 ..25.9 run execute if score @p shakudo_regen matches 2 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_3 ..21.9 run execute if score @p shakudo_regen matches 3 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_4 ..17.9 run execute if score @p shakudo_regen matches 4 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_5 ..19.9 run execute if score @p shakudo_regen matches 5 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_6 ..15.9 run execute if score @p shakudo_regen matches 6 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_7 ..11.9 run execute if score @p shakudo_regen matches 7 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_8 ..7.9 run execute if score @p shakudo_regen matches 8 run effect give @p minecraft:regeneration 3 1 true