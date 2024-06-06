#Bard LIMIT BREAK

#region Under Effect Process: FFa-Owner
execute as @a[tag=FFaO_EFFECT] at @s if score @s WS_RECAST_T matches 1.. run scoreboard players remove @s WS_RECAST_T 1
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=FFaO_EFFECT,tag=FFaO_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove FFaO_EFFECT
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove FFaO_TIMER_0
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove FFaO_TIMER_1
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove FFaO_TIMER_2
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove FFaO_TIMER_3
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove FFaO_TIMER_4
execute as @a[tag=!FFaO_EFFECT,tag=FFaO_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove FFaO_TIMER_5
#endregion
#region Under Effect Process: FFa
execute as @a[tag=FFa_EFFECT] at @s if score @s LB_CHARGE matches ..99 if score ^VPHandler TICK_ROOP matches 5 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=FFa_EFFECT] at @s if score @s LB_CHARGE matches ..99 if score ^VPHandler TICK_ROOP matches 15 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=FFa_EFFECT,tag=FFa_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove FFa_EFFECT
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove FFa_TIMER_0
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove FFa_TIMER_1
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove FFa_TIMER_2
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove FFa_TIMER_3
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove FFa_TIMER_4
execute as @a[tag=!FFa_EFFECT,tag=FFa_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove FFa_TIMER_5
#endregion
