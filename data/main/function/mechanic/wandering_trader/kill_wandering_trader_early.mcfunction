kill @n[type=minecraft:wandering_trader,tag=summoned_by_beacon]
execute at @n[type=marker,tag=beacon_kindling] run execute if block ~ ~ ~ minecraft:campfire run setblock ~ ~ ~ minecraft:campfire[lit=false]
function main:mechanic/wandering_trader/kill_this_beacon
execute at @a run execute if score @p wandering_trader_timer_score >= 0 wandering_trader_timer_score run tellraw @p {"text":"The Wandering Trader has lost sight of your beacon...","color":"gray"}
execute as @a run execute if score @s wandering_trader_timer_score >= 0 wandering_trader_timer_score run tag @s remove SummonedTrader
execute as @a run scoreboard players reset @p wandering_trader_timer_score