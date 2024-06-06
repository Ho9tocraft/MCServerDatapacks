execute as @s at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/bard/extras/ws_combo_1
execute as @s at @s run scoreboard players set @s PROC_TIMER_WS 600
