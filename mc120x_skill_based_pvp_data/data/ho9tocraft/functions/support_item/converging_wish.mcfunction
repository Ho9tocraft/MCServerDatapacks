#Converging Wish (集いし願い)
#define tag C_Wish_TGT
#define tag C_Wish_T_0
#define tag C_Wish_T_1
#define tag C_Wish_T_2
#define tag C_Wish_T_3
#define tag C_Wish_T_4
#define tag C_Wish_T_5

execute as @s at @s run tellraw @a ["", { "bold": false, "italic": false, "translate": "use.converging_wish.name", "fallback": "%1$s used \"Converging Wish\".", "with": [ {"selector": "@s"}], "color": "#FFA500" }]
# 
execute as @s[team=RED] at @s as @a[team=RED,sort=random,predicate=ho9tocraft:score_condition/whether_job_is_tank] at @s run tag @s add C_Wish_TGT
execute as @s[team=BLU] at @s as @a[team=BLU,sort=random,predicate=ho9tocraft:score_condition/whether_job_is_tank] at @s run tag @s add C_Wish_TGT
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 4800
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_0 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_0
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_1 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_1
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_2 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_2
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_3 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_3
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_4 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_4
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_TIMER_5 matches 4800 if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_T_5
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s absorption 60 9 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s resistance 60 3 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s health_boost 240 9 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s saturation 4800 3 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s haste 60 3 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run effect give @s strength 60 9 false
execute as @a[tag=C_Wish_TGT] at @s if score @s SPEFF_DONE matches 1 run tag @s add C_Wish_EFFECT
execute as @a[tag=C_Wish_TGT] at @s run tag @s remove C_Wish_TGT
execute as @s at @s run scoreboard players set @s AB_RECAST_T 200
execute as @s at @s run clear @s glow_ink_sac
