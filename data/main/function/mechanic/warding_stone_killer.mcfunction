particle minecraft:large_smoke ~ ~.25 ~ .25 .5 .25 .01 20
kill @e[distance=..3,type=item,nbt={Item:{id:"minecraft:lodestone"}}]
summon item ~ ~ ~ {Item:{id:"minecraft:blaze_powder",count:7}}
kill @n[tag=WardingStoneSetup]