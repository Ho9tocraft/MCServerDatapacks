#Glare III Exec
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.glare_iii.name", "fallback": "%1$s used \"Glare III\".", "with": [ { "selector": "@s" }]}]

execute as @s at @s run tag @s add GlareIII_Exec
# RED -> BLU
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run damage @s 16.0 indirect_magic by @a[team=RED,tag=GlareIII_Exec,limit=1]
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run effect give @s slowness 30 4 false
# BLU -> RED
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run damage @s 16.0 indirect_magic by @a[team=BLU,tag=GlareIII_Exec,limit=1]
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run effect give @s slowness 30 4 false

execute as @s at @s if score @s CHARGE_ACT matches 1.. run scoreboard players set @s WS_RECAST_T 20
execute as @s at @s if score @s CHARGE_ACT matches 1.. if score @s MG_RECAST_T matches 0..19 run scoreboard players set @s MG_RECAST_T 20
execute as @s at @s if score @s CHARGE_ACT matches 1.. if score @s AB_RECAST_T matches 0..19 run scoreboard players set @s AB_RECAST_T 20
execute as @s at @s if score @s CHARGE_ACT matches 1.. if score @s LB_RECAST_T matches 0..19 run scoreboard players set @s LB_RECAST_T 20
execute as @s at @s if score @s CHARGE_ACT matches 0 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s CHARGE_ACT matches 0 if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s CHARGE_ACT matches 0 if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s CHARGE_ACT matches 0 if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s at @s if score @s CHARGE_ACT matches 1.. run scoreboard players remove @s CHARGE_ACT 1
# Convert Item to "Afflatus Misery"
execute as @s at @s if score @s CHARGE_ACT matches 0 run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/extras/weapon_skills/within_stance/to_misery
