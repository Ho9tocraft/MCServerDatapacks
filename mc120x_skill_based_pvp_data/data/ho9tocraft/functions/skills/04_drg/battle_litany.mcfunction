#Battle Litany(バトルリタニー)

# Pre Particles
# Team = RED
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s run effect give @s haste 20 1 false
# Team = BLU
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s run effect give @s haste 20 1 false
# Post Particles
# Post Process
# - Recast Timer
execute as @s at @s run scoreboard players set @s AB_RECAST_T 2400
