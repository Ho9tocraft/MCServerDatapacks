playsound entity.wither.spawn player @a ~ ~ ~ 0.75 1.0 0.375
tellraw @a ["", { "bold": false, "italic": false, "translate": "activate.light_flood.name", "fallback": "It's the beginning of the Eighth Umbral Era.", "color": "#FFFFE0" }]
tellraw @a ["", { "bold": false, "italic": false, "translate": "win.extra.light_flood", "fallback": "Die forever.", "color": "#FFFFE0" }]
execute as @e[type=!villager,team=!Spectate] at @s run tag @s add BRose_EFFECT
