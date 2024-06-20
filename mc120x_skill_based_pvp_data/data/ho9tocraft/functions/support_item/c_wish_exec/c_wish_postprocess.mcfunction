execute as @a[tag=C_Wish_EFFECT] at @s if score @s LB_CHARGE matches ..99 if score ^VPHandler TICK_ROOP matches 5 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=C_Wish_EFFECT] at @s if score @s LB_CHARGE matches ..99 if score ^VPHandler TICK_ROOP matches 10 run scoreboard players add @s LB_CHARGE 1
execute as @a[tag=C_Wish_EFFECT] at @s if score @s NOW_MP < @s MAX_MP run scoreboard players operation @s NOW_MP = @s MAX_MP
execute as @a[tag=C_Wish_EFFECT,team=RED] at @s as @e[team=BLU,distance=..5] at @s run damage @s 30.0 wither at ~ ~ ~
execute as @a[tag=C_Wish_EFFECT,team=BLU] at @s as @e[team=RED,distance=..5] at @s run damage @s 30.0 wither at ~ ~ ~
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=C_Wish_EFFECT,tag=C_Wish_T_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove C_Wish_EFFECT
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_0] at @s if score @s SPEFF_TIMER_0 matches 0 run tag @s remove C_Wish_T_0
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_1] at @s if score @s SPEFF_TIMER_1 matches 0 run tag @s remove C_Wish_T_1
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_2] at @s if score @s SPEFF_TIMER_2 matches 0 run tag @s remove C_Wish_T_2
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_3] at @s if score @s SPEFF_TIMER_3 matches 0 run tag @s remove C_Wish_T_3
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_4] at @s if score @s SPEFF_TIMER_4 matches 0 run tag @s remove C_Wish_T_4
execute as @a[tag=!C_Wish_EFFECT,tag=C_Wish_T_5] at @s if score @s SPEFF_TIMER_5 matches 0 run tag @s remove C_Wish_T_5
