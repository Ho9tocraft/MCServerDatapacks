#LIMIT BREAK

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.paladin_lb.name", "fallback": "%1$s used \"Last Bastion\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run playsound finalfantasyxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 1.0 1.0 0.5
#region team=RED
execute as @s[team=RED] at @s run effect give @e[team=RED,distance=..30] absorption 30 4 false
execute as @s[team=RED] at @s run effect give @e[team=RED,distance=..30] resistance 30 2 false
#endregion
#region team=BLU
execute as @s[team=BLU] at @s run effect give @e[team=BLU,distance=..30] absorption 30 4 false
execute as @s[team=BLU] at @s run effect give @e[team=BLU,distance=..30] resistance 30 2 false
#endregion
#region PostProcess
execute as @s at @s if score @s AB_RECAST_T matches 1.. run scoreboard players remove @s AB_RECAST_T 1200
execute as @s at @s if score @s AB_RECAST_T matches ..-1 run scoreboard players set @s AB_RECAST_T 0
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
#endregion

