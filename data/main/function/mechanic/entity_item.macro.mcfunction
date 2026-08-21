# Arguments:
# entity : entity id
# nbt : nbt modifiers

# debug
#say entity item macro

$execute at @s run summon $(entity) ~ ~ ~ $(nbt)

$execute at @n[type=$(entity)] run particle minecraft:poof ~ ~.5 ~ .25 1 .25 0.05 40

kill @n[type=minecraft:armor_stand,tag=entity_item]