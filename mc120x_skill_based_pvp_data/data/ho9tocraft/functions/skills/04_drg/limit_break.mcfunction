#Dragonsong Dive(LIMIT BREAK)

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.dragoon_lb.name", "fallback": "%1$s used \"Dragonsong Dive\".", "with": [ { "selector": "@s" }], "color": "#FFD700"}]
tag @s add DRG_LB_Exec
execute as @s at @s run playsound finalfantasyxiv:limit_break_activated player @a[distance=..30] ~ ~ ~ 1.0 1.0 0.5
# Pre Particles
# Team = RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..30] at @s run damage @s 150.0 ho9tocraft:limit_break by @a[team=RED,tag=DRG_LB_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..30] at @s run damage @s 150.0 ho9tocraft:limit_break by @a[team=BLU,tag=DRG_LB_Exec,limit=1]
# Post Particles
# Post Process
# - Recast Timer
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 50
execute as @s[tag=DRG_LB_Exec] at @s run tag @s remove DRG_LB_Exec
# - LIMIT BREAK Overheat
## IfScore Sector
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_0 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_1 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_2 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_3 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_4 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 0 if score @s NGEFF_DONE matches 0 store success score @s NGEFF_DONE run scoreboard players set @s NGEFF_TIMER_5 1200
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_0
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_1
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_2
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_3
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_4
execute as @s[tag=!LB_OVERHEAT,tag=!LB_HEAT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 1200 if score @s NGEFF_DONE matches 1 run tag @s add LB_HEAT_TIMER_5
## Success Effect
execute as @s[tag=!LB_OVERHEAT] at @s if score @s NGEFF_DONE matches 1 run tag @s add LB_OVERHEAT
