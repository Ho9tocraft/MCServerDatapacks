#Sacred Circle Execute
execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.sacred_circle.name", "fallback": "%1$s used \"Sacred Circle\".", "with": [ { "selector": "@s" }]}]

#for RED
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s run function ho9tocraft:skills/06_sgs/common/sacred_circle_particles
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s as @e[team=RED,distance=..5] at @s run function ho9tocraft:skills/common/pure_healer {heal:5}

#for BLU
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s run function ho9tocraft:skills/06_sgs/common/sacred_circle_particles
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s as @e[team=BLU,distance=..5] at @s run function ho9tocraft:skills/common/pure_healer {heal:5}

# IfScore Sector
execute as @s at @s if predicate ho9tocraft:random_controller/rand_half run function ho9tocraft:skills/06_sgs/executing/sacred_circle_proc_test
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s strength 20 0 false
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add Defensive
execute as @s at @s if score @s SPEFF_DONE matches 1 run item modify entity @s hotbar.1 ho9tocraft:jobs/sage_moepic/extras/weapon_skills/within_stance/to_dia
execute as @s at @s if score @s SPEFF_DONE matches 1 run item modify entity @s hotbar.2 ho9tocraft:jobs/sage_moepic/extras/magics/within_stance/to_adloquium

execute as @s at @s if score @s SPEFF_DONE matches 1 run scoreboard players set @s AB_RECAST_T 1800
execute as @s at @s if score @s SPEFF_DONE matches 0 run scoreboard players set @s AB_RECAST_T 200
execute as @s[tag=SGS_Magic_Cast] at @s run tag @s remove SGS_Magic_Cast
