#Sword Oath(忠義の剣)
#define tag SOATH_EFFECT
#define tag SO_TIMER_0
#define tag SO_TIMER_1
#define tag SO_TIMER_2
#define tag SO_TIMER_3
#define tag SO_TIMER_4
#define tag SO_TIMER_5

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.sword_oath.name", "fallback": "%1$s used \"Sword Oath\".", "with": [ { "selector": "@s" }]}]
#region MainProcess
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 400
execute as @s at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 400
execute as @s at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 400
execute as @s at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 400
execute as @s at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 400
execute as @s at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 400
execute as @s at @s if score @s SPEFF_TIMER_0 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_0
execute as @s at @s if score @s SPEFF_TIMER_1 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_1
execute as @s at @s if score @s SPEFF_TIMER_2 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_2
execute as @s at @s if score @s SPEFF_TIMER_3 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_3
execute as @s at @s if score @s SPEFF_TIMER_4 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_4
execute as @s at @s if score @s SPEFF_TIMER_5 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add SO_TIMER_5
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s strength 20 1 false
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add SOATH_EFFECT
#endregion
#region PostProcess
execute as @s at @s run scoreboard players set @s WS_RECAST_T 1200
execute as @s at @s if score @s MG_RECAST_T matches 0 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0 run scoreboard players set @s LB_RECAST_T 50
#endregion
