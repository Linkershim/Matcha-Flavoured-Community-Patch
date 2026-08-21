execute at @n[type=minecraft:wandering_trader] run particle minecraft:poof ~ ~.5 ~ .2 1 .2 0 50
tp @n[type=minecraft:wandering_trader,tag=summoned_by_beacon] ~ ~-1000 ~
execute at @n[type=item_frame,tag=beacon_kindling] run setblock ~ ~ ~ campfire[lit=false] replace
execute at @n[type=item_frame,tag=beacon_kindling] run particle minecraft:large_smoke ~ ~ ~ .1 .1 .1 0.1 10
function main:mechanic/wandering_trader/kill_this_beacon
tellraw @a {"text":"The Wandering Trader has left","color":"gray"}
execute as @a run execute if score @s wandering_trader_timer_score >= 0 wandering_trader_timer_score run tag @s remove SummonedTrader
execute as @a run execute if score @s wandering_trader_timer_score >= 15min wandering_trader_timer_score run scoreboard players reset @p wandering_trader_timer_score