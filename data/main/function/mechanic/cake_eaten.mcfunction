execute at @a run execute if score @p eat_cake_slice >= 1 eat_cake_slice run effect give @p minecraft:instant_health 1 0 true
execute at @a run execute if score @p eat_cake_slice >= 1 eat_cake_slice run effect give @p minecraft:health_boost 180 1 true
execute at @a run execute if score @p eat_cake_slice >= 1 eat_cake_slice run scoreboard players set @p eat_cake_slice 0