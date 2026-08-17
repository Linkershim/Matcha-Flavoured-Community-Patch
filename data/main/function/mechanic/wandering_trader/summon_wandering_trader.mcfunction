#Becuase the scoreboard only applies when it is loaded (I assume?) It means that when checked the player must be close enough to load the beacon kindling, therefore there is no danger of just summoning the trader at that time
#Add the tag so that the beacon doesn't summon another
execute as @s run tag @s add summoned_trader
execute at @s run summon wandering_trader ^1 ^ ^ {Invulnerable:1b,Tags:["summoned_by_beacon"]}
tellraw @a {"text":"The Wandering Trader has arrived, they will depart in 5 minutes","color":"gray"}