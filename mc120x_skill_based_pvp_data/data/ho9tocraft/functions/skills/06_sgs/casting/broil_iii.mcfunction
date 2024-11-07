#Broil II(死炎法)

execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "cast.broil_iii.name", "fallback": "%1$s is the \"Broil III\" stance.", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add SGS_Magic_Cast
execute as @s at @s if score @s CAST_TIMER matches 0 run scoreboard players set @s CAST_TIMER 30
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
