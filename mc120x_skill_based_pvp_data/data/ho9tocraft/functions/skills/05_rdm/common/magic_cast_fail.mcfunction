#Red Magic: Casting Fail
#region Magic / Vercure III Interrupted
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail,tag=Red_Magic_Cast] at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail,tag=Red_Magic_Cast] at @s run scoreboard players set @s MG_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail,tag=Red_Magic_Cast] at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail,tag=Red_Magic_Cast] at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail,tag=Red_Magic_Cast] at @s run tag @s remove Red_Magic_Cast
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_mg_cast_fail] at @s run scoreboard players set @s CAST_TIMER 0
#endregion
#region LIMIT BREAK Interrupted
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_lb_cast_fail,tag=CasterLB_Cast] at @s run scoreboard players set @s LB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_lb_cast_fail,tag=CasterLB_Cast] at @s run tag @s remove CasterLB_Cast
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_lb_cast_fail] at @s run scoreboard players set @s CAST_TIMER 0
#endregion
