#Broil II Execute

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.broil_iv.name", "fallback": "%1$s used \"Broil IV\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add BroilIV_Exec

# RED -> BLU
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run particle dust_color_transition{from_color:[0.353,0.267,0.596],scale:1,to_color:[0.918,0.333,0.196]} ~ ~ ~ 0.6 2 0.6 1 750 normal @a[distance=..30]
execute as @s[team=RED] at @s if score @s CAST_TIMER matches 0 as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=BroilIV_Exec,limit=1]

#BLU -> RED
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run particle dust_color_transition{from_color:[0.353,0.267,0.596],scale:1,to_color:[0.918,0.333,0.196]} ~ ~ ~ 0.6 2 0.6 1 750 normal @a[distance=..30]
execute as @s[team=BLU] at @s if score @s CAST_TIMER matches 0 as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run damage @s 48.0 indirect_magic by @a[team=BLU,tag=BroilIV_Exec,limit=1]

# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 400
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..97 run scoreboard players add @s LB_CHARGE 3
execute as @s at @s if score @s LB_CHARGE matches 98..99 run scoreboard players add @s LB_CHARGE 1
# Convert Item to "Broil II"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/extras/weapon_skills/without_stance/to_broil_ii
execute as @s[tag=BroilIV_Exec] at @s run tag @s remove BroilIV_Exec
execute as @s[tag=SGS_Magic_Cast] at @s run tag @s remove SGS_Magic_Cast
