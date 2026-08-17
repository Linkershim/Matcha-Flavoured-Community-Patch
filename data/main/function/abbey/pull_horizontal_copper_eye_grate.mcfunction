execute at @a[advancements={main:mechanics/hit_copper_eye=true}] run playsound minecraft:block.enchantment_table.use block @p ~ ~ ~ 1 2
particle minecraft:trial_spawner_detection ^ ^.5 ^-2 .5 .5 .5 0 20
fill ^1 ^ ^ ^-1 ^ ^-1 air
fill ^1 ^ ^-2 ^-1 ^ ^-2 copper_grate
setblock ^ ^ ^-2 target
particle block{block_state:"minecraft:copper_grate"} ^ ^ ^1 1 .5 1 .01 30 normal
playsound minecraft:entity.iron_golem.hurt block @a ~ ~-3 ~ 0.4
execute at @n[type=marker] run function main:abbey/kill_copper_eye