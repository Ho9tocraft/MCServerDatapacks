#Radiant Finale(光神のフィナーレ)

execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s run effect give @s strength 15 1 false
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s run effect give @s strength 15 1 false
execute as @s at @s run scoreboard players set @s AB_RECAST_T 1200
