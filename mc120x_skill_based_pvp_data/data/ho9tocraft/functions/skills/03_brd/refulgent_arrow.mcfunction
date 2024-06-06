#Refulgent Arrow(リフルジェントアロー)
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run item replace entity @s weapon.offhand with tipped_arrow 1
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run item modify entity @s weapon.offhand ho9tocraft:jobs/bard/extras/tipped_arrow_ws_1
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run item modify entity @s hotbar.1 ho9tocraft:jobs/bard/extras/proc_end_ws
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s PROC_TIMER_WS matches 1.. run scoreboard players set @s PROC_TIMER_WS 0
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run clear @s arrow 1
execute as @s at @s if predicate ho9tocraft:passive_selector/not_have_arrow run scoreboard players set @s WS_RECAST_T 200
execute as @s at @s if predicate ho9tocraft:passive_selector/not_have_arrow if score @s MG_RECAST_T matches ..199 run scoreboard players set @s MG_RECAST_T 200
