#Knight Errantry(トロツキーカウンター)
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.knight_errantry.name", "fallback": "%1$s used \"Knight Errantry\".", "with": [ { "selector": "@s" }], "color": "#FFA500"}]
execute as @s[team=RED] at @s as @e[team=RED] at @s run effect give @s resistance 60 4 true
execute as @s[team=BLU] at @s as @e[team=BLU] at @s run effect give @s resistance 60 4 true
execute as @s at @s run scoreboard players set @s AB_RECAST_T 200
execute as @s at @s run clear @s armor_stand 1
