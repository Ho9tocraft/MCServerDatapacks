#Sage of Scarlet Magic: Casting Fail
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail,tag=SGS_Magic_Cast] at @s if score @s WS_RECAST_T matches 0..29 run scoreboard players set @s WS_RECAST_T 30
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail,tag=SGS_Magic_Cast] at @s if score @s MG_RECAST_T matches 0..29 run scoreboard players set @s MG_RECAST_T 30
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail,tag=SGS_Magic_Cast] at @s if score @s AB_RECAST_T matches 0..29 run scoreboard players set @s AB_RECAST_T 30
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail,tag=SGS_Magic_Cast] at @s if score @s LB_RECAST_T matches 0..29 run scoreboard players set @s LB_RECAST_T 30
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail,tag=SGS_Magic_Cast] at @s run tag @s remove SGS_Magic_Cast
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/magic/moesage_cast_fail] at @s run scoreboard players set @s CAST_TIMER 0

#LB Interrupted
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/sage_moepic_lb_cast_fail,tag=CasterLB_Cast] at @s run effect clear @s resistance
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/sage_moepic_lb_cast_fail,tag=CasterLB_Cast] at @s run effect clear @s absorption
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/sage_moepic_lb_cast_fail,tag=CasterLB_Cast] at @s run scoreboard players set @s LB_RECAST_T 50
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/sage_moepic_lb_cast_fail,tag=CasterLB_Cast] at @s run tag @s remove CasterLB_Cast
execute as @a[predicate=ho9tocraft:item_selector/jobs/06_sgs/sage_moepic_lb_cast_fail] at @s run scoreboard players set @s CAST_TIMER 0
