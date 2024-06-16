playsound entity.wither.spawn player @a ~ ~ ~ 0.75 1.0 0.375
tellraw @a ["", { "bold": false, "italic": false, "translate": "activate.light_flood.name", "fallback": "It's the beginning of the Eighth Umbral Era.", "color": "#FFFFE0" }]
tellraw @a ["", { "bold": false, "italic": false, "translate": "win.extra.light_flood", "fallback": "Die forever.", "color": "#FFFFE0" }]
execute as @a[tag=BRose_Exec] at @s run tag @s remove BRose_Exec
execute as @r at @s run tag @s add BRose_Exec
execute as @e[type=!villager] at @s run tag @s add BRose_EFFECT
execute as @e[type=!villager] at @s run scoreboard players set @s MAX_MP 0
execute as @e[type=!villager] at @s run scoreboard players set @s PROC_TIMER_AB -2147483648
execute as @e[type=!villager] at @s run scoreboard players set @s PROC_TIMER_MG -2147483648
execute as @e[type=!villager] at @s run scoreboard players set @s PROC_TIMER_WS -2147483648
execute as @e[type=!villager,tag=!BRose_Exec] at @s run scoreboard players set @s AB_RECAST_T 2147483647
execute as @e[type=!villager,tag=!BRose_Exec] at @s run scoreboard players set @s AR_RECAST_T 2147483647
execute as @e[type=!villager,tag=!BRose_Exec] at @s run scoreboard players set @s MG_RECAST_T 2147483647
execute as @e[type=!villager,tag=!BRose_Exec] at @s run scoreboard players set @s WS_RECAST_T 2147483647
