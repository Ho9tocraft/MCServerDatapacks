#Dia Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.dia.name", "fallback": "%1$s used \"Dia\".", "with": [ { "selector": "@s" }]}]

execute as @s at @s run tag @s add Dia_Exec
# RED -> BLU
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run damage @s 16.0 indirect_magic by @a[team=RED,tag=Dia_Exec,limit=1]
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run effect give @s slowness 30 4 false
# BLU -> RED
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run damage @s 16.0 indirect_magic by @a[team=BLU,tag=Dia_Exec,limit=1]
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run effect give @s slowness 30 4 false

execute as @s at @s run scoreboard players remove @s NOW_MP 400
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s PROC_TIMER_WS 600
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s at @s run tag @s remove Dia_Exec
execute as @s at @s run scoreboard players set @s CHARGE_ACT 3
# Convert Item to "Glare III"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/extras/weapon_skills/within_stance/to_glare_iii
