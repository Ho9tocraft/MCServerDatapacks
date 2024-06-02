execute as @s[predicate=ho9tocraft:item_selector/common_ws_proc] at @s if score @s PROC_TIMER_WS matches 0 run item modify entity @s hotbar.1 ho9tocraft:jobs/exorcist/extras/proc_end_ws
execute as @s[predicate=ho9tocraft:item_selector/common_mg_proc] at @s if score @s PROC_TIMER_MG matches 0 run item modify entity @s hotbar.2 ho9tocraft:jobs/exorcist/extras/proc_end_mg
