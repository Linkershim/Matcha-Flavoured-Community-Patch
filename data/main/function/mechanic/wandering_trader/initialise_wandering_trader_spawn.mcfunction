# stopwatch create wandering_trader10min
tellraw @a {"text":"A Wandering Trader has spotted your beacon, they will arrive in 10 minutes","color":"gray"}
scoreboard players add @n[type=marker,tag=beacon_kindling] wandering_trader_timer_score 0

#Initilise the loop
schedule function main:mechanic/wandering_trader/check_wandering_trader_timer_loop 1s
# schedule function main:mechanic/wandering_trader/initialise_wandering_trader_spawn
