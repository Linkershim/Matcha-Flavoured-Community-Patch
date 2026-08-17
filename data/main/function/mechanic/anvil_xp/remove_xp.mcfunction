execute at @a[tag=!ExcludeFromXPRemoval] run xp set @p 0 levels
execute at @a[tag=!ExcludeFromXPRemoval] run xp set @p 0 points
execute unless stopwatch xp_timer ..30.9 run tag @a remove ExcludeFromXPRemoval