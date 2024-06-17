tellraw @a ["", { "bold": false, "italic": false, "translate": "clear.light_flood", "fallback": "A miracle happened! The Umbral Aether that undermines this battlefield disappeared!", "color": "#DA70D6" }]
tag @e[tag=BRose_EFFECT] remove BRose_EFFECT
tag @a[tag=BRose_Exec] remove BRose_Exec
execute as @a at @s if score @s MAX_MP matches 0 run scoreboard players set @s MAX_MP 5000
execute as @a at @s if score @s WS_RECAST_T matches 8401.. run scoreboard players set @s WS_RECAST_T 0
execute as @a at @s if score @s MG_RECAST_T matches 8401.. run scoreboard players set @s MG_RECAST_T 0
execute as @a at @s if score @s AB_RECAST_T matches 8401.. run scoreboard players set @s AB_RECAST_T 0
execute as @a at @s if score @s AR_RECAST_T matches 8401.. run scoreboard players set @s AR_RECAST_T 1200
execute as @a at @s run effect clear @s hunger
execute as @a at @s run effect clear @s weakness
execute as @a at @s run effect clear @s unluck
execute as @a at @s run effect give @s instant_health 60 15 true
