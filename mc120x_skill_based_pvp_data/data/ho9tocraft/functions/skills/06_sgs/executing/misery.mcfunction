#Afflatus Misery
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.afflatus_misery.name", "fallback": "%1$s used \"Afflatus Misery\".", "with": [ { "selector": "@s" }]}]

execute as @s at @s run tag @s add Misery_Exec
# RED -> BLU
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s as @e[team=BLU,distance=..5] at @s run damage @s 16.0 indirect_magic by @a[team=RED,tag=Misery_Exec,limit=1]
# BLU -> RED
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s as @e[team=RED,distance=..5] at @s run damage @s 16.0 indirect_magic by @a[team=BLU,tag=Misery_Exec,limit=1]
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s at @s run tag @s remove Misery_Exec
# Convert Item to "Dia"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/extras/weapon_skills/within_stance/to_dia
