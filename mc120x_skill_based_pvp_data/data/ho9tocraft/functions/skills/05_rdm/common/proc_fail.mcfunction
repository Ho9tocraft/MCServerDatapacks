execute as @s[predicate=ho9tocraft:item_selector/common_ws_proc] at @s if score @s PROC_TIMER_WS matches 0 run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/finish/proc_end_ws
execute as @s[predicate=ho9tocraft:item_selector/common_mg_proc] at @s if score @s PROC_TIMER_MG matches 0 run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/finish/proc_end_mg
execute as @s[predicate=ho9tocraft:item_selector/common_ab_proc] at @s if score @s PROC_TIMER_AB matches 0 run scoreboard players set @s AB_RECAST_T 2400
execute as @s[predicate=ho9tocraft:item_selector/common_ab_proc] at @s if score @s PROC_TIMER_AB matches 0 run item modify entity @s hotbar.3 ho9tocraft:jobs/red_mage/extras/abilities/end_of_manafication
