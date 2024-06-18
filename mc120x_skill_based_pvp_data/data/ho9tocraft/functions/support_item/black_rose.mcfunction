#Black Rose (黒薔薇)
#define tag BRose_EFFECT
execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "use.black_rose.name", "fallback": "%1$s used \"Black Rose\".", "color": "#FFA500", "with": [{"selector": "@s"}]}]
execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "activate.light_flood.name", "fallback": "It's the beginning of the Eighth Umbral Era.", "color": "#FFFFE0" }]
execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "win.extra.light_flood", "fallback": "Die forever.", "color": "#FFFFE0" }]
execute as @s at @s as @e[type=!villager,team=!Spectate] at @s run tag @s add BRose_EFFECT
execute as @s at @s as @e[type=!villager,team=!Spectate] at @s run scoreboard players set @s PROC_TIMER_AB 0
execute as @s at @s as @e[type=!villager,team=!Spectate] at @s run scoreboard players set @s PROC_TIMER_MG 0
execute as @s at @s as @e[type=!villager,team=!Spectate] at @s run scoreboard players set @s PROC_TIMER_WS 0
execute as @s at @s run clear @s wither_skeleton_skull
