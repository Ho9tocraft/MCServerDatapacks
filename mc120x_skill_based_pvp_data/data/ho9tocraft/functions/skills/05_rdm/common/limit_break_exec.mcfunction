#LIMIT BREAK Cast Complete

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.red_mage_lb.name", "fallback": "%1$s used \"Vermillion Scourge\".", "with": [ { "selector": "@s" }]}]
tag @s add LB_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..50,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..30] at @s run damage @s 135.0 ho9tocraft:limit_break_magic by @a[team=RED,tag=LB_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..50,sort=nearest,limit=1] at @s as @e[team=RED,distance=..30] at @s run damage @s 135.0 ho9tocraft:limit_break_magic by @a[team=BLU,tag=LB_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
execute as @s at @s run tag @s remove CasterLB_Cast
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
#endregion
