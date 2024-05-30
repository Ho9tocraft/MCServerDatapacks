#Hallowed Ground(インビンシブル)
#define tag HG_EFFECT
#define tag HG_TIMER_0
#define tag HG_TIMER_1
#define tag HG_TIMER_2
#define tag HG_TIMER_3
#define tag HG_TIMER_4
#define tag HG_TIMER_5

#region MainProcess
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 200
execute as @s at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 200
execute as @s at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 200
execute as @s at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 200
execute as @s at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 200
execute as @s at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 200
execute as @s at @s if score @s SPEFF_TIMER_0 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_0
execute as @s at @s if score @s SPEFF_TIMER_1 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_1
execute as @s at @s if score @s SPEFF_TIMER_2 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_2
execute as @s at @s if score @s SPEFF_TIMER_3 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_3
execute as @s at @s if score @s SPEFF_TIMER_4 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_4
execute as @s at @s if score @s SPEFF_TIMER_5 matches 200 if score @s SPEFF_DONE matches 1 run tag @s add HG_TIMER_5
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s resistance 10 4 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add HG_EFFECT
#endregion
#region PostProcess
execute as @s at @s run scoreboard players set @s AB_RECAST_T 8400
#endregion
