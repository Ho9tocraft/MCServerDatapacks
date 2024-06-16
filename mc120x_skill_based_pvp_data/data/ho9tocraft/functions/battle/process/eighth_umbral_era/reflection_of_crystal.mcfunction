tellraw @a ["", { "bold": false, "italic": false, "translate": "clear.light_flood", "fallback": "A miracle happened! The Umbral Aether that undermines this battlefield disappeared!", "color": "#DA70D6" }]
tag @e[tag=BRose_EFFECT] remove BRose_EFFECT
tag @a[tag=BRose_Exec] remove BRose_Exec
execute as @a at @s if score @s MAX_MP matches 0 run scoreboard players set @s MAX_MP 2000
