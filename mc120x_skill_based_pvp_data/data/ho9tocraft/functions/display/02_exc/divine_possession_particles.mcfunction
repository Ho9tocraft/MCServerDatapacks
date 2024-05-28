#Divine Possession Particles In Effects

#region Under Effect Process
execute as @a[tag=DIVPOS_EFFECT] at @s positioned ~ ~1 ~ run particle soul_fire_flame ~ ~ ~ 0.4 1.0 0.4 0.0 5 normal @a[distance=..30]
execute as @a[tag=DIVPOS_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 6 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DIVPOS_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 12 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DIVPOS_EFFECT] at @s if score ^VPHandler TICK_ROOP matches 18 if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=DIVPOS_EFFECT,tag=DP_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove DIVPOS_EFFECT
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove DP_TIMER_0
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove DP_TIMER_1
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove DP_TIMER_2
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove DP_TIMER_3
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove DP_TIMER_4
execute as @a[tag=!DIVPOS_EFFECT,tag=DP_TIMER_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove DP_TIMER_5
#endregion
