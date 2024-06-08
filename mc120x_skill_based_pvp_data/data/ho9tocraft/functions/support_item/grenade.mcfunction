#define tag GRENADE_Exec
#define tag GRENADE_RED
#define tag GRENADE_BLU
#define tag grenade

execute as @a[scores={SNOWBALL=1..}] at @s run tag @s add GRENADE_Exec
execute as @a[scores={SNOWBALL=1..},team=RED] at @s as @e[type=snowball,distance=..1.520001] at @s run tag @s add GRENADE_RED
execute as @a[scores={SNOWBALL=1..},team=BLU] at @s as @e[type=snowball,distance=..1.520001] at @s run tag @s add GRENADE_BLU
execute as @e[type=snowball,tag=GRENADE_RED] at @s run function ho9tocraft:support_item/grenade_exec/grenade_aec with entity @s
execute as @e[type=snowball,tag=GRENADE_BLU] at @s run function ho9tocraft:support_item/grenade_exec/grenade_aec with entity @s
execute as @e[type=area_effect_cloud,tag=grenade,nbt={Age:2}] at @s run function ho9tocraft:support_item/grenade_exec/grenade_check with entity @s
execute as @a[scores={SNOWBALL=1..}] at @s run scoreboard players set @s SNOWBALL 0
