#resets everyone becuase if you take it off, its never called to remove the number
scoreboard players set @a apotropaic 0

#I changed this to predicates to help with performance, but I havne't been able to test it on a server. A fellow bug-reporter said that this improved theirs, so I assume this would as well. Let me know
execute if entity @p[predicate=main:armour_enchants/apotropaic_chestplate] run scoreboard players add @p apotropaic 1
execute if entity @p[predicate=main:armour_enchants/apotropaic_leggings] run scoreboard players add @p apotropaic 1
execute if entity @p[predicate=main:armour_enchants/apotropaic_helmet] run scoreboard players add @p apotropaic 1
execute if entity @p[predicate=main:armour_enchants/apotropaic_boots] run scoreboard players add @p apotropaic 1

execute unless stopwatch 1s ..0.9 run execute if score @s apotropaic matches 1 run function main:enchantment_effects/warding1
execute unless stopwatch 1s ..0.9 run execute if score @s apotropaic matches 2 run function main:enchantment_effects/warding2
execute unless stopwatch 0.5s ..0.4 run execute if score @s apotropaic matches 3 run function main:enchantment_effects/warding2
execute unless stopwatch 0.5s ..0.4 run execute if score @s apotropaic matches 4 run function main:enchantment_effects/warding3
execute unless stopwatch divinity30s ..29.9 run execute if score @s apotropaic matches 4 run effect give @p minecraft:absorption 30 1 true