#Final Fantasia(英雄のファンタジア)
#define tag FFa_EFFECT
#define tag FFa_TIMER_0
#define tag FFa_TIMER_1
#define tag FFa_TIMER_2
#define tag FFa_TIMER_3
#define tag FFa_TIMER_4
#define tag FFa_TIMER_5
#define tag FFaO_EFFECT
#define tag FFaO_TIMER_0
#define tag FFaO_TIMER_1
#define tag FFaO_TIMER_2
#define tag FFaO_TIMER_3
#define tag FFaO_TIMER_4
#define tag FFaO_TIMER_5

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.bard_lb.name", "fallback": "%1$s used \"Final Fantasia\".", "with": [ { "selector": "@s" }], "color": "#FFD700"}]
execute as @s at @s run playsound finalfantasyxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 1.0 1.0 0.5
#region Owner
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 600
execute as @s at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 600
execute as @s at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 600
execute as @s at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 600
execute as @s at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 600
execute as @s at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 600
execute as @s at @s if score @s SPEFF_TIMER_0 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_0
execute as @s at @s if score @s SPEFF_TIMER_1 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_1
execute as @s at @s if score @s SPEFF_TIMER_2 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_2
execute as @s at @s if score @s SPEFF_TIMER_3 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_3
execute as @s at @s if score @s SPEFF_TIMER_4 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_4
execute as @s at @s if score @s SPEFF_TIMER_5 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFaO_TIMER_5
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run effect give @s speed 30 1 true
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add FFaO_EFFECT
execute as @s at @s if score @s SPEFF_DONE matches 1 run scoreboard players set @s SPEFF_DONE 0
#endregion
#region team=RED
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 600
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_0] SPEFF_TIMER_0 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_0
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_1] SPEFF_TIMER_1 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_1
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_2] SPEFF_TIMER_2 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_2
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_3] SPEFF_TIMER_3 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_3
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_4] SPEFF_TIMER_4 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_4
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s[tag=!FFaO_TIMER_5] SPEFF_TIMER_5 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_5
# Success Event
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_DONE matches 1 run effect give @s strength 30 2 true
execute as @s[team=RED] at @s as @e[team=RED,distance=..30] at @s if score @s SPEFF_DONE matches 1 run tag @s add FFa_EFFECT
#endregion
#region team=BLU
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 600
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_0] SPEFF_TIMER_0 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_0
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_1] SPEFF_TIMER_1 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_1
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_2] SPEFF_TIMER_2 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_2
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_3] SPEFF_TIMER_3 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_3
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_4] SPEFF_TIMER_4 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_4
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s[tag=!FFaO_TIMER_5] SPEFF_TIMER_5 matches 600 if score @s SPEFF_DONE matches 1 run tag @s add FFa_TIMER_5
# Success Event
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_DONE matches 1 run effect give @s strength 30 2 true
execute as @s[team=BLU] at @s as @e[team=BLU,distance=..30] at @s if score @s SPEFF_DONE matches 1 run tag @s add FFa_EFFECT
#endregion
#region PostProcess
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
#endregion
