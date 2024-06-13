#Delirium Spiller Effect Process

#region Under Effect Process
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 6 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 12 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 18 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 6 if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 100
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 12 if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 100
execute as @a[tag=DLSP_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 18 if score @s NOW_MP matches ..9999 run scoreboard players add @s NOW_MP 100
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=DLSP_EFFECT,tag=DLSP_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove DLSP_EFFECT
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove DLSP_TIMER_0
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove DLSP_TIMER_1
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove DLSP_TIMER_2
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove DLSP_TIMER_3
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove DLSP_TIMER_4
execute as @a[tag=!DLSP_EFFECT,tag=DLSP_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove DLSP_TIMER_5
#endregion

#region DRK LB Rebound
execute as @a[tag=DRK_LB_Rebound] at @s run effect clear @s absorption
execute as @a[tag=DRK_LB_Rebound] at @s run effect clear @s regeneration
execute as @a[tag=DRK_LB_Rebound] at @s run effect clear @s fire_resistance
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=DRK_LB_Rebound,tag=DRK_LB_NGEFF_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove DRK_LB_Rebound
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_0] at @s if score @s NGEFF_TIMER_0 matches 0 run tag @s remove DRK_LB_NGEFF_0
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_1] at @s if score @s NGEFF_TIMER_1 matches 0 run tag @s remove DRK_LB_NGEFF_1
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_2] at @s if score @s NGEFF_TIMER_2 matches 0 run tag @s remove DRK_LB_NGEFF_2
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_3] at @s if score @s NGEFF_TIMER_3 matches 0 run tag @s remove DRK_LB_NGEFF_3
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_4] at @s if score @s NGEFF_TIMER_4 matches 0 run tag @s remove DRK_LB_NGEFF_4
execute as @a[tag=!DRK_LB_Rebound,tag=DRK_LB_NGEFF_5] at @s if score @s NGEFF_TIMER_5 matches 0 run tag @s remove DRK_LB_NGEFF_5
#endregion
