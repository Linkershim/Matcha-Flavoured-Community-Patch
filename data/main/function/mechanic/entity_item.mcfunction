# Reset the trigger
advancement revoke @s only main:mechanics/entity_item

# debug
#say entity item function triggered

# run the macro with the custom data stored on the armor stand
execute if entity @n[type=minecraft:armor_stand,tag=entity_item] as @n[type=minecraft:armor_stand,tag=entity_item] run return run function main:mechanic/entity_item.macro with entity @n[type=minecraft:armor_stand,tag=entity_item] data