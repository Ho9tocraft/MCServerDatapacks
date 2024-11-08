#Adloquium Execute

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.adloquium.name", "fallback": "%1$s used \"Adloquium\".", "with": [ { "selector": "@s" }]}]

#for RED
execute as @s[team=RED] at @s as @e[team=RED,distance=..15] at @s run function ho9tocraft:skills/common/barrier_healer {heal:4,second:60,barrier:1}

#for BLU
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..15] at @s run function ho9tocraft:skills/common/barrier_healer {heal:4,second:60,barrier:1}

execute as @s[tag=SGS_Magic_Cast] at @s run tag @s remove SGS_Magic_Cast
