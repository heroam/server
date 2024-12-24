# Revoke the advancement to allow reuse
advancement revoke @a only pack:right_click

# Apply effects to entities within 10 blocks and set the cooldown for the player
execute as @a if score @s Cooldown matches 0 run effect give @e[distance=..10] slowness 5 250 false
execute as @a if score @s Cooldown matches 0 run effect give @e[distance=..10] blindness 5 250 false
execute as @a if score @s Cooldown matches 0 run effect clear @s slowness
execute as @a if score @s Cooldown matches 0 run effect clear @s blindness
execute as @a if score @s Cooldown matches 0 run scoreboard players set @s Cooldown 1200

# Notify players who are on cooldown
execute as @a[scores={Cooldown=1..1200}] run tellraw @s {"text":"You are still on cooldown!","color":"red","bold":true}
