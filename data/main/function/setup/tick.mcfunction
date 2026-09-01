function main:setup/ticking_functions

execute as @a if score @s AnemosCooldown matches 1.. run scoreboard players remove @s AnemosCooldown 1