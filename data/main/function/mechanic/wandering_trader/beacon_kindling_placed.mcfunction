execute at @n[type=marker,tag=beacon_kindling] run setblock ~ ~ ~ minecraft:campfire[signal_fire=true]
execute at @n[type=marker,tag=beacon_kindling] run particle minecraft:flame ~ ~.7 ~ .1 .1 .1 0.07 30
execute at @n[type=marker,tag=beacon_kindling] run playsound minecraft:item.firecharge.use block @a ~ ~ ~ 1
execute at @n[type=marker,tag=beacon_kindling] run playsound minecraft:entity.wither.spawn block @a ~ ~ ~ 0.5
advancement revoke @s only main:mechanics/beacon_kindling
execute if entity @s[tag=SummonedTrader] run tellraw @s {"text":"You have already summoned a Wandering Trader, please wait patiently while they travel","color":"gray"}
execute if entity @s[tag=SummonedTrader] run execute as @s run function main:mechanic/wandering_trader/kill_this_beacon
execute if entity @s[tag=!SummonedTrader] run execute as @s run function main:mechanic/wandering_trader/initialise_wandering_trader_spawn
execute if entity @s[tag=!SummonedTrader] run tag @s add SummonedTrader
