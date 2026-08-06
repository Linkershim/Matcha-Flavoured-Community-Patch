#Derived from work by CloudWolf https://www.youtube.com/watch?v=k6osFnyrjU4&ab_channel=CloudWolf
advancement revoke @s only main:using_item
execute if items entity @s weapon.* *[minecraft:custom_data~{BlessingZephyr:1b}] run function main:blessing_zephyr