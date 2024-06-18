tellraw @a ["", { "bold": false, "italic": false, "translate": "clear.light_flood", "fallback": "A miracle happened! The Umbral Aether that undermines this battlefield disappeared!", "color": "#DA70D6" }]
tag @e[tag=BRose_EFFECT] remove BRose_EFFECT
execute as @a at @s run effect clear @s hunger
execute as @a at @s run effect clear @s weakness
execute as @a at @s run effect clear @s unluck
execute as @a at @s run effect give @s instant_health 60 15 true
execute as @a at @s run effect give @s saturation 60 15 true
