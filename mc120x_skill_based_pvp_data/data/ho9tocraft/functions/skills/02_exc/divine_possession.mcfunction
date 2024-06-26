#Divine Possession(神懸り)
#define tag DIVPOS_EFFECT
#define tag DP_TIMER_0
#define tag DP_TIMER_1
#define tag DP_TIMER_2
#define tag DP_TIMER_3
#define tag DP_TIMER_4
#define tag DP_TIMER_5

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.divine_possession.name", "fallback": "%1$s used \"Divine Possession\".", "with": [ { "selector": "@s" }]}]
#region MainProcess
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 600
execute as @s at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 600
execute as @s at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 600
execute as @s at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 600
execute as @s at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 600
execute as @s at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 600
execute as @s at @s if score @s SPEFF_TIMER_0 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_0
execute as @s at @s if score @s SPEFF_TIMER_1 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_1
execute as @s at @s if score @s SPEFF_TIMER_2 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_2
execute as @s at @s if score @s SPEFF_TIMER_3 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_3
execute as @s at @s if score @s SPEFF_TIMER_4 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_4
execute as @s at @s if score @s SPEFF_TIMER_5 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add DP_TIMER_5
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s speed 30 1 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s haste 30 1 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s resistance 10 3 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s health_boost 30 4 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s absorption 30 9 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s instant_health 1 15 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add DIVPOS_EFFECT
#endregion
#region PostProcess
execute as @s at @s run scoreboard players set @s AB_RECAST_T 1200
#endregion
