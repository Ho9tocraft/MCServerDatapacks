#Ambrosia(アンブロシアの秘薬)
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.ambrosia.name", "fallback": "%1$s used \"Ambrosia Elixir\".", "with": [ { "selector": "@s" }], "color": "#FFA500"}]
execute as @s at @s run effect give @s absorption 30 4 false
execute as @s at @s run effect give @s resistance 60 3 false
execute as @s at @s run effect give @s fire_resistance 60 1 false
execute as @s at @s run effect give @s regeneration 5 2 false
execute as @s at @s run scoreboard players set @s AR_RECAST_T 4800
execute as @s at @s run clear @s orange_dye 1
