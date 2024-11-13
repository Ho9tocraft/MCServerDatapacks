#LIMIT BREAK Execute
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.sage_moepic_lb.name", "fallback": "%1$s used \"Fullfilled Ultima\".", "with": [ { "selector": "@s" }], "color": "#FFD700"}]
execute as @s at @s run tag @s add LB_Exec
execute as @s at @s run tag @s add FullUltima_Exec
execute as @s at @s run effect give @s slowness infinite 255 true
execute as @s at @s run schedule function ho9tocraft:skills/06_sgs/executing/limit_break_postprocess 3.5s append
#RED -> BLU
execute as @s[team=RED] at @s run tp @e[team=BLU,distance=..50] @s
execute as @s[team=RED] at @s as @e[team=BLU,distance=..10] at @s run damage @s 10.0 ho9tocraft:limit_break_magic by @a[team=RED,tag=LB_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s as @e[team=BLU,distance=..10] at @s run effect give @s blindness 30 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..10] at @s run effect give @s slowness 30 3 true
#BLU -> RED
execute as @s[team=BLU] at @s run tp @e[team=RED,distance=..50] @s
execute as @s[team=BLU] at @s as @e[team=RED,distance=..10] at @s run damage @s 10.0 ho9tocraft:limit_break_magic by @a[team=BLU,tag=LB_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s as @e[team=RED,distance=..10] at @s run effect give @s blindness 30 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..10] at @s run effect give @s slowness 30 3 true
#PostProcess
execute as @s at @s run tag @s remove LB_Exec
execute as @s at @s run tag @s remove CasterLB_Cast
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
