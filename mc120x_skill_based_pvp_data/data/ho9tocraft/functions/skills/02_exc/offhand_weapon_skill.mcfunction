#OFFHAND WEAPON SKILL
#Moonlight Shoha II(月光無明照破)

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.moonlight_shoha_ii.name", "fallback": "%1$s used \"Moonlight Shoha II\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add OffWS_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..5] at @s run damage @s 25.0 minecraft:player_attack by @a[team=RED,tag=OffWS_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..5] at @s run damage @s 25.0 minecraft:player_attack by @a[team=BLU,tag=OffWS_Exec,limit=1]
#endregion
#region PostProcess
# Particles
execute as @s at @s run particle sweep_attack ~ ~ ~ 5 0.1 5 1 500 normal @a[distance=..30]
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
#endregion
