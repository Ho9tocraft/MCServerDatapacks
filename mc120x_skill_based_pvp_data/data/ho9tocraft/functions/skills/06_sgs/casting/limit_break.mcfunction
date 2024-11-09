#LIMIT BREAK (Fullfilled Ultima)
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "cast.sage_moepic_lb.name", "fallback": "%1$s is the \"Fullfilled Ultima\" stance.", "with": [ { "selector": "@s" }], "color": "#FFD700"}]
execute as @s at @s run playsound finalfantasyxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 1.0 1.0 0.5
execute as @s at @s run effect give @s resistance 5 3 true
execute as @s at @s run effect give @s absorption 10 4 true
execute as @s at @s run tag @s add CasterLB_Cast
execute as @s at @s if score @s CAST_TIMER matches 0 run scoreboard players set @s CAST_TIMER 100
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
