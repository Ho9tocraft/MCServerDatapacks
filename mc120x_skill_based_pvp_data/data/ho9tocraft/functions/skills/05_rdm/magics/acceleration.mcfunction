#Acceleration(アクセラレーション)
#define tag ACCEL_EFFECT
#define tag ACCEL_TIMER_0
#define tag ACCEL_TIMER_1
#define tag ACCEL_TIMER_2
#define tag ACCEL_TIMER_3
#define tag ACCEL_TIMER_4
#define tag ACCEL_TIMER_5

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.acceleration.name", "fallback": "%1$s used \"Acceleration\".", "with": [ { "selector": "@s" }]}]
#region MainProcess
# IfScore Sector
#優先度: TIMER_0 > TIMER_1 > TIMER_2 > TIMER_3 > TIMER_4 > TIMER_5
execute as @s at @s if score @s SPEFF_TIMER_0 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_0 400
execute as @s at @s if score @s SPEFF_TIMER_1 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_1 400
execute as @s at @s if score @s SPEFF_TIMER_2 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_2 400
execute as @s at @s if score @s SPEFF_TIMER_3 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_3 400
execute as @s at @s if score @s SPEFF_TIMER_4 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_4 400
execute as @s at @s if score @s SPEFF_TIMER_5 matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s SPEFF_TIMER_5 400
execute as @s at @s if score @s SPEFF_TIMER_0 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_0
execute as @s at @s if score @s SPEFF_TIMER_1 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_1
execute as @s at @s if score @s SPEFF_TIMER_2 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_2
execute as @s at @s if score @s SPEFF_TIMER_3 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_3
execute as @s at @s if score @s SPEFF_TIMER_4 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_4
execute as @s at @s if score @s SPEFF_TIMER_5 matches 400 if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_TIMER_5
# Success Event
execute as @s at @s if score @s SPEFF_DONE matches 1 run tag @s add ACCEL_EFFECT
#endregion
#region PostProcess
# Recast Timer
execute as @s at @s if score @s WS_RECAST_T matches 0..19 run scoreboard players set @s WS_RECAST_T 20
execute as @s at @s run scoreboard players set @s MG_RECAST_T 20
execute as @s at @s if score @s AB_RECAST_T matches 0..19 run scoreboard players set @s AB_RECAST_T 20
execute as @s at @s if score @s LB_RECAST_T matches 0..19 run scoreboard players set @s LB_RECAST_T 20
# Convert Item to "Jolt II" or "Impact(When you used "Manafication")"
execute as @s at @s run scoreboard players set @s PROC_TIMER_MG 300
execute as @s[tag=Mana_EFFECT] at @s run scoreboard players add @s PROC_TIMER_MG 900
execute as @s[tag=!Mana_EFFECT] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/magics/without_manafication/mg_combo_1
execute as @s[tag=Mana_EFFECT] at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/magics/with_manafication/mg_combo_1
#endregion
