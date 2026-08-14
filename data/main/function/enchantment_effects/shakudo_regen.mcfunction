scoreboard players set @p shakudo_regen 0
execute if entity @p[nbt={equipment:{head:{components:{"minecraft:enchantments":{"main:shakudo_regen":1}}}}}] run scoreboard players add @p shakudo_regen 1
execute if entity @p[nbt={equipment:{chest:{components:{"minecraft:enchantments":{"main:shakudo_regen":1}}}}}] run scoreboard players add @p shakudo_regen 1
execute if entity @p[nbt={equipment:{chest:{id:"minecraft:elytra",components:{"minecraft:enchantments":{"main:shakudo_regen":1}}}}}] run scoreboard players add @p shakudo_regen 4
execute if entity @p[nbt={equipment:{legs:{components:{"minecraft:enchantments":{"main:shakudo_regen":1}}}}}] run scoreboard players add @p shakudo_regen 1
execute if entity @p[nbt={equipment:{feet:{components:{"minecraft:enchantments":{"main:shakudo_regen":1}}}}}] run scoreboard players add @p shakudo_regen 1
execute unless stopwatch shakudo_regen_1 ..29.9 run execute if score @p shakudo_regen matches 1 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_2 ..25.9 run execute if score @p shakudo_regen matches 2 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_3 ..21.9 run execute if score @p shakudo_regen matches 3 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_4 ..17.9 run execute if score @p shakudo_regen matches 4 run effect give @p minecraft:regeneration 3 0 true
execute unless stopwatch shakudo_regen_5 ..19.9 run execute if score @p shakudo_regen matches 5 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_6 ..15.9 run execute if score @p shakudo_regen matches 6 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_7 ..11.9 run execute if score @p shakudo_regen matches 7 run effect give @p minecraft:regeneration 3 1 true
execute unless stopwatch shakudo_regen_8 ..7.9 run execute if score @p shakudo_regen matches 8 run effect give @p minecraft:regeneration 3 1 true