# Store everyone's SleepTimer NBT as a Score
execute as @a store result score @s sleepTimerScore run data get entity @s SleepTimer

# If at least one person is sleeping, accelerate time and set the Weather to Clear
execute as @p[scores={sleepTimerScore=1..100}] run time add 120
execute as @p[scores={sleepTimerScore=1..100}] run weather clear