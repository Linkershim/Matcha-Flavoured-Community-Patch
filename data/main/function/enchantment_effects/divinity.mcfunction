scoreboard players set @p divinity 0
execute if entity @p[nbt={SelectedItem:{components:{"minecraft:enchantments":{"main:divinity":1}}}}] run scoreboard players add @p divinity 1
execute if entity @p[nbt={equipment:{head:{components:{"minecraft:enchantments":{"main:divinity":1}}}}}] run scoreboard players add @p divinity 1
execute if entity @p[nbt={equipment:{chest:{components:{"minecraft:enchantments":{"main:divinity":1}}}}}] run scoreboard players add @p divinity 1
execute if entity @p[nbt={equipment:{legs:{components:{"minecraft:enchantments":{"main:divinity":1}}}}}] run scoreboard players add @p divinity 1
execute if entity @p[nbt={equipment:{feet:{components:{"minecraft:enchantments":{"main:divinity":1}}}}}] run scoreboard players add @p divinity 1
execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 1 run effect give @p minecraft:absorption 30 0 true
execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 2 run effect give @p minecraft:absorption 30 1 true
execute unless stopwatch divinity30s ..29.9 run execute if score @p divinity matches 3 run effect give @p minecraft:absorption 30 2 true
execute unless stopwatch divinity20s ..19.9 run execute if score @p divinity matches 4 run effect give @p minecraft:absorption 20 4 true