#Paradox

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.paradox.name", "fallback": "%1$s used \"Paradox\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add Paradox_Exec

#RED -> BLU
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,limit=1,sort=nearest] at @s run particle dust_color_transition{from_color:[0.922,0.333,0.196],scale:1,to_color:[0.000,0.459,0.761]} ~ ~1 ~ 0.6 1.2 0.6 1 1500 normal @a[distance=..30]
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,limit=1,sort=nearest] at @s as @e[team=BLU,distance=..5] at @s run damage @s 72.0 indirect_magic by @a[team=RED,tag=Paradox_Exec,limit=1]

#BLU -> RED
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,limit=1,sort=nearest] at @s run particle dust_color_transition{from_color:[0.922,0.333,0.196],scale:1,to_color:[0.000,0.459,0.761]} ~ ~1 ~ 0.6 1.2 0.6 1 1500 normal @a[distance=..30]
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,limit=1,sort=nearest] at @s as @e[team=RED,distance=..5] at @s run damage @s 72.0 indirect_magic by @a[team=BLU,tag=Paradox_Exec,limit=1]

execute as @s at @s run scoreboard players remove @s NOW_MP 1600
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50

execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/sage_moepic/extras/magics/without_stance/to_fire_ii
execute as @s[tag=Paradox_Exec] at @s run tag @s remove Paradox_Exec
