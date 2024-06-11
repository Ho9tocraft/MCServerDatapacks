#Red Mage Display Process and PostProcess

#region Acceleration Process
execute as @a[tag=ACCEL_EFFECT,predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_long_cast] at @s run scoreboard players remove @s CAST_TIMER 1
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=ACCEL_EFFECT,tag=ACCEL_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove ACCEL_EFFECT
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove ACCEL_TIMER_0
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove ACCEL_TIMER_1
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove ACCEL_TIMER_2
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove ACCEL_TIMER_3
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove ACCEL_TIMER_4
execute as @a[tag=!ACCEL_EFFECT,tag=ACCEL_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove ACCEL_TIMER_5
#endregion
#region Manafication Process
execute as @a[tag=Mana_EFFECT] at @s if score @s PROC_TIMER_AB matches 0 run tag @s remove Mana_EFFECT
#endregion
#region ShiftEffect Process
execute as @a[tag=ShiftBlack] at @s if score @s RDM_ShiftEffect matches 0 run tag @s remove ShiftBlack
execute as @a[tag=ShiftWhite] at @s if score @s RDM_ShiftEffect matches 0 run tag @s remove ShiftWhite
#endregion
