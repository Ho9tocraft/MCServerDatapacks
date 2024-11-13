#Defensive LB Increase
execute as @a[tag=Defensive] at @s if score ^VPHandler TICK_ROOP matches 5 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=Defensive] at @s if score ^VPHandler TICK_ROOP matches 15 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=Defensive,tag=Defensive_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove Defensive
execute as @a[tag=Defensive,tag=Defensive_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove Defensive
execute as @a[tag=Defensive,tag=Defensive_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove Defensive
execute as @a[tag=Defensive,tag=Defensive_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove Defensive
execute as @a[tag=Defensive,tag=Defensive_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove Defensive
execute as @a[tag=Defensive,tag=Defensive_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove Defensive
execute as @a[tag=!Defensive,tag=Defensive_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run function ho9tocraft:display/06_sgs/sage_of_scarlet_return_skill
execute as @a[tag=!Defensive,tag=Defensive_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove Defensive_TIMER_0
execute as @a[tag=!Defensive,tag=Defensive_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove Defensive_TIMER_1
execute as @a[tag=!Defensive,tag=Defensive_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove Defensive_TIMER_2
execute as @a[tag=!Defensive,tag=Defensive_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove Defensive_TIMER_3
execute as @a[tag=!Defensive,tag=Defensive_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove Defensive_TIMER_4
execute as @a[tag=!Defensive,tag=Defensive_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove Defensive_TIMER_5

#LIMIT BREAK "Fullfilled Ultima" Multi-hit Performance
execute as @a[tag=FullUltima_Exec] at @s run particle end_rod ~ ~1 ~ 10 10 10 0.25 750 normal @a[distance=..30]
execute as @a[tag=FullUltima_Exec,team=RED] at @s as @e[team=BLU,distance=..10] at @s run damage @s 7.5 ho9tocraft:limit_break_magic by @a[team=RED,tag=FullUltima_Exec,sort=nearest,limit=1]
execute as @a[tag=FullUltima_Exec,team=BLU] at @s as @e[team=RED,distance=..10] at @s run damage @s 7.5 ho9tocraft:limit_break_magic by @a[team=BLU,tag=FullUltima_Exec,sort=nearest,limit=1]
