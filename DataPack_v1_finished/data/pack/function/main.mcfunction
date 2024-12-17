# Decrement the cooldown timer for all players who have a cooldown (Cooldown > 0)
scoreboard players remove @a[scores={Cooldown=1..}] Cooldown 1
