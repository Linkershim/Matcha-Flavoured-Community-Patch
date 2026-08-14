#resets everyone becuase if you take it off, its never called to remove the number
scoreboard players set @a divinity 0

#I changed this to predicates to help with performance, but I havne't been able to test it on a server. A fellow bug-reporter said that this improved theirs, so I assume this would as well. Let me know
execute if entity @p[predicate=main:armour_enchants/divinity_chestplate] run scoreboard players add @p divinity 1
execute if entity @p[predicate=main:armour_enchants/divinity_leggings] run scoreboard players add @p divinity 1
execute if entity @p[predicate=main:armour_enchants/divinity_helmet] run scoreboard players add @p divinity 1
execute if entity @p[predicate=main:armour_enchants/divinity_boots] run scoreboard players add @p divinity 1
execute if entity @p[predicate=main:armour_enchants/divinity_mainhand] run scoreboard players add @p divinity 1

execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 1 run effect give @p minecraft:absorption 30 0 true
execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 2 run effect give @p minecraft:absorption 30 1 true
execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 3 run effect give @p minecraft:absorption 30 2 true
execute unless stopwatch divinity20s ..19.9 run execute if score @p divinity matches 4 run effect give @p minecraft:absorption 20 4 true