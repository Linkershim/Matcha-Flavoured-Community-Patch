execute at @p run particle minecraft:noxious_gas ~ ~.1 ~ .5 0 .5 0 1
execute at @p if block ~ ~-.1 ~ minecraft:nether_quartz_ore run schedule function main:particle/sulfurous_hellstone 3t
# nausea was too annoying
# execute at @p if block ~ ~-.1 ~ minecraft:nether_quartz_ore run execute unless entity @p[nbt={active_effects: [{id: "minecraft:nausea"}]}] run effect give @p minecraft:nausea 4 0 true
advancement revoke @p only main:particle/on_sulfur