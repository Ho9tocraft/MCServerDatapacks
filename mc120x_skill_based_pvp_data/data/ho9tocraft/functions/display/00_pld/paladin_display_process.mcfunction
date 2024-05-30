#Paladin Display Process and PostProcess

#region Sword Oath Process
execute as @a[tag=SOATH_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 5 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=SOATH_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 15 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=SOATH_EFFECT,tag=SO_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove SOATH_EFFECT
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove SO_TIMER_0
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove SO_TIMER_1
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove SO_TIMER_2
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove SO_TIMER_3
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove SO_TIMER_4
execute as @a[tag=!SOATH_EFFECT,tag=SO_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove SO_TIMER_5
#endregion
#region Hallowed Ground Process
execute as @a[tag=HG_EFFECT] at @s run particle end_rod ~ ~1 ~ 0.4 1 0.4 0.1 2 normal @a[distance=..30]
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=HG_EFFECT,tag=HG_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove HG_EFFECT
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove HG_TIMER_0
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove HG_TIMER_1
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove HG_TIMER_2
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove HG_TIMER_3
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove HG_TIMER_4
execute as @a[tag=!HG_EFFECT,tag=HG_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove HG_TIMER_5
#endregion
