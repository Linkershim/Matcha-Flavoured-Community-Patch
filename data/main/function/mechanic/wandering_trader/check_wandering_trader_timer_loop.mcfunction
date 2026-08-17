#Check if the 10 min timer is up, and the beacon has NOT already summoned a trader, if true, summon him
execute as @e[type=marker,tag=beacon_kindling,tag=!summoned_trader] run execute if score @s wandering_trader_timer_score >= 10min wandering_trader_timer_score run execute as @s run function main:mechanic/wandering_trader/summon_wandering_trader
execute as @e[type=marker,tag=beacon_kindling,tag=summoned_trader] run execute if score @s wandering_trader_timer_score >= 15min wandering_trader_timer_score run execute as @s run function main:mechanic/wandering_trader/kill_wandering_trader

#If the campfire is broken, kill everything
# execute as @e[type=marker,tag=beacon_kindling] run execute unless block ~ ~ ~ minecraft:campfire run function main:mechanic/wandering_trader/kill_wandering_trader_early
execute at @e[type=marker,tag=beacon_kindling] run execute unless block ~ ~ ~ minecraft:campfire[lit=true] run function main:mechanic/wandering_trader/kill_wandering_trader_early


#Score to check which player exactly summoned him
execute as @a[tag=SummonedTrader] run scoreboard players add @s wandering_trader_timer_score 1

#If the time is less than 15min, add 10 seconds (a value of 1)
execute as @e[type=marker,tag=beacon_kindling] run execute if score @s wandering_trader_timer_score < 15min wandering_trader_timer_score run scoreboard players add @s wandering_trader_timer_score 1

# If the time on any of them is less than 15min, Restart the loop in 10 seconds
execute as @e[type=marker,tag=beacon_kindling] run execute if score @s wandering_trader_timer_score <= 15min wandering_trader_timer_score run schedule function main:mechanic/wandering_trader/check_wandering_trader_timer_loop 10s