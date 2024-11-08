#Fire II(ファイラ)

execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "cast.fire_ii.name", "fallback": "%1$s is the \"Fire II\" stance.", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add SGS_Magic_Cast
execute as @s at @s if score @s CAST_TIMER matches 0 run scoreboard players set @s CAST_TIMER 60
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
