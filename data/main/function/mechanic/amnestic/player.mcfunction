# Reset trigger
advancement revoke @s only main:mechanics/amnestic/player

# Debug
say triggered amnestic on player

# Remove all recipe unlocks from the player
recipe take @s *
advancement revoke @s from minecraft:recipes/root