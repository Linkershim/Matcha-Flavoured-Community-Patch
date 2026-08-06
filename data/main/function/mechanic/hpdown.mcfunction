execute at @a[scores={deaths=1..,Hearts=22..}] run scoreboard players remove @p Hearts 2 
#execute at @a[scores={deaths=1..}] run tag @p add AddingHearts
function main:mechanic/hpup
execute at @a[scores={deaths=1..}] run scoreboard players set @p deaths 0