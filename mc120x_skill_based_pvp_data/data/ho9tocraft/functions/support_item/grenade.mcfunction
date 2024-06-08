#Grenade
#define tag grenade_USER
#define tag grenade_RED
#define tag grenade_BLU

execute as @a[team=RED,scores={SNOWBALL=1..}] run tag @s add grenade_USER
execute as @a[team=BLU,scores={SNOWBALL=1..}] run tag @s add grenade_USER
execute as @a[team=RED,scores={SNOWBALL=1..}] at @s as @e[type=snowball,distance=..10] at @s run tag @s add grenade_RED
execute as @a[team=BLU,scores={SNOWBALL=1..}] at @s as @e[type=snowball,distance=..10] at @s run tag @s add grenade_BLU
execute as @e[type=snowball,tag=grenade_RED] at @s as @e[team=BLU,distance=..15] at @s run damage @s 40.0 player_explosion by @e[type=snowball,tag=grenade_RED,sort=nearest,limit=1] from @a[team=RED,tag=grenade_USER,sort=nearest,limit=1]
execute as @e[type=snowball,tag=grenade_BLU] at @s as @e[team=RED,distance=..15] at @s run damage @s 40.0 player_explosion by @e[type=snowball,tag=grenade_BLU,sort=nearest,limit=1] from @a[team=BLU,tag=grenade_USER,sort=nearest,limit=1]
execute as @a[tag=grenade_USER] at @s run tag @s remove grenade_USER
execute as @a[scores={SNOWBALL=1..}] run scoreboard players set @s SNOWBALL 0
