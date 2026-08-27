# If the player has more than 10 health, stop the function without running the rest of the commands
execute unless entity @s[scores={HealthPoints=..10}] run return fail

title @s actionbar {"text":"Bloodrage","bold":false,"color":"red"}
effect give @s minecraft:resistance 1 1 true
effect give @s minecraft:strength 1 0 true
particle dust{color:[1.000,0.000,0.000],scale:1} ~ ~1.5 ~ .25 .25 .25 .1 1 normal