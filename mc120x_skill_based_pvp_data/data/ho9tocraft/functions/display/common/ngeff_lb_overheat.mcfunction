#LIMIT BREAK Overheat(リミットブレイク蓄積不可状態)

# Particles
execute as @e[tag=LB_OVERHEAT] at @s if score @s LB_CHARGE matches 1.. run particle dust_color_transition{from_color:[0.902,0.706,0.133],scale:1,to_color:[0.459,0.129,0.000]} ~ ~1 ~ 0.6 1.2 0.6 1 750 normal @a[distance=..30]

# Effect
execute as @e[tag=LB_OVERHEAT] at @s if score @s LB_CHARGE matches 1.. run scoreboard players set @s LB_CHARGE 0

# Timer Condition
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=LB_OVERHEAT,tag=LB_HEAT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove LB_OVERHEAT
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove LB_HEAT_TIMER_0
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove LB_HEAT_TIMER_1
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove LB_HEAT_TIMER_2
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove LB_HEAT_TIMER_3
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove LB_HEAT_TIMER_4
execute as @e[tag=!LB_OVERHEAT,tag=LB_HEAT_TIMER_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove LB_HEAT_TIMER_5
