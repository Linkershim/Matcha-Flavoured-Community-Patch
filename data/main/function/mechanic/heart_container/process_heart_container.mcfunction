#If they have max HP, do nothing and revoke the advancement
execute as @s if score @p Hearts >= maximum_hearts Hearts run advancement revoke @p only main:mechanics/heart_container_obtained
#If they have less than the max HP, clear the heart container
execute at @p if score @p Hearts < maximum_hearts Hearts run function main:mechanic/heart_container/clear_heart_container
execute at @p run function main:mechanic/heart_container/set_max_hp