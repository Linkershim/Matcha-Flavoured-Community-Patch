execute at @a[advancements={main:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ~ ~.5 ~ .5 .5 .5 0 20
fill ~ ~-2 ~ ~ ~ ~ air replace minecraft:lantern
fill ~ ~-2 ~ ~ ~ ~ air replace minecraft:iron_chain
particle block{block_state:"minecraft:iron_block"} ~ ~-1 ~ .1 1 .1 .1 10 normal
summon small_fireball ~ ~-2 ~ {Motion:[0.0,-0.25,0.0]}
playsound minecraft:block.chain.break block @a ~ ~-2 ~ 1
execute at @n[type=marker] run function main:abbey/kill_copper_eye