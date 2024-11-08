#Sacred Circle Cast
execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "cast.sacred_circle.name", "fallback": "%1$s is the \"Sacred Circle\" stance.", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add SGS_Magic_Cast
execute as @s at @s if score @s CAST_TIMER matches 0 run scoreboard players set @s CAST_TIMER 60
execute as @s at @s run scoreboard players set @s AB_RECAST_T 50
