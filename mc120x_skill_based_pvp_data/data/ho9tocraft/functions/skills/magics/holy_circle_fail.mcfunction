#Holy Circle: Casting Fail
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail,tag=HCircle_Cast] at @s if score @s WS_RECAST_T matches 0 run scoreboard players set @s WS_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail,tag=HCircle_Cast] at @s run scoreboard players set @s MG_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail,tag=HCircle_Cast] at @s if score @s AB_RECAST_T matches 0 run scoreboard players set @s AB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail,tag=HCircle_Cast] at @s if score @s LB_RECAST_T matches 0 run scoreboard players set @s LB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail,tag=HCircle_Cast] at @s run tag @s remove HCircle_Cast
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_fail] at @s run scoreboard players set @s CAST_TIMER 0
