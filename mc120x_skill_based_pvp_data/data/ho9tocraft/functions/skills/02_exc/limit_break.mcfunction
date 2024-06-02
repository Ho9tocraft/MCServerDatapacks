#LIMIT BREAK

tag @s add LB_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6] at @s run damage @s 97.35 ho9tocraft:limit_break by @a[team=RED,tag=LB_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6] at @s run damage @s 97.35 ho9tocraft:limit_break by @a[team=BLU,tag=LB_Exec,limit=1]
#endregion
#region PostProcess
execute as @s at @s run particle end_rod ~ ~ ~ 5 0.1 5 0 300 normal @a[distance=..30]
execute as @s at @s run particle sweep_attack ~ ~ ~ 5 0.1 5 0 150 normal @a[distance=..30]
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
#endregion
