#Skills Wrapper
#define tag LB_Exec
#define tag OffWS_Exec
#define damage_type ho9tocraft:limit_break LB Damage
#define damage_type ho9tocraft:ngeffect/poison Poison Damage
#define damage_type ho9tocraft:ngeffect/scarlet_rot Scarlet Rot Damage
#define damage_type ho9tocraft:ngeffect/frostbite Frostbite Damage
#define damage_type ho9tocraft:ngeffect/madness Madness Damage
#define damage_type ho9tocraft:ngeffect/death Death Blighted Damage

#region Common Magic Casting
execute as @a[predicate=ho9tocraft:item_selector/common_mgcasting] at @s run scoreboard players remove @s CAST_TIMER 1
function #ho9tocraft:jobs/job_magic_castfail
#endregion
#region ID=0, DisplayName=Paladin
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_ws] at @s run function ho9tocraft:skills/00_pld/sword_oath
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/00_pld/mg_combo_4] at @s run function ho9tocraft:skills/00_pld/blade_of_valor
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/00_pld/mg_combo_3] at @s run function ho9tocraft:skills/00_pld/blade_of_truth
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/00_pld/mg_combo_2] at @s run function ho9tocraft:skills/00_pld/blade_of_faith
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/00_pld/mg_combo_1] at @s run function ho9tocraft:skills/00_pld/confiteor
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_exec,tag=HCircle_Cast] at @s run function ho9tocraft:skills/magics/holy_circle_exec
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_mg_cast_begin] at @s run function ho9tocraft:skills/00_pld/holy_circle
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_ab] at @s run function ho9tocraft:skills/00_pld/hallowed_ground
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_offhand_ws] at @s run function ho9tocraft:skills/00_pld/offhand_weapon_skill
execute as @a[predicate=ho9tocraft:item_selector/jobs/00_pld/paladin_lb] at @s run function ho9tocraft:skills/00_pld/limit_break
execute as @a[predicate=ho9tocraft:item_selector/common_mg_proc,scores={CURRENT_JOB=0,PROC_TIMER_MG=0}] at @s run function ho9tocraft:skills/00_pld/proc_fail
#endregion
#region ID=1, DisplayName=Dark Knight
#endregion
#region ID=2, DisplayName=Exorcist
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/02_exc/ws_combo_1] at @s run function ho9tocraft:skills/02_exc/hissatsu_senei
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/02_exc/ws_combo_2] at @s run function ho9tocraft:skills/02_exc/midare_setsugekka_fl
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_ws] at @s run function ho9tocraft:skills/02_exc/hissatsu_gyoten
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/02_exc/mg_combo_1] at @s run function ho9tocraft:skills/02_exc/hissatsu_guren
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/02_exc/mg_combo_2] at @s run function ho9tocraft:skills/02_exc/tenka_goken
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_mg] at @s run function ho9tocraft:skills/02_exc/hissatsu_kaiten
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_ab] at @s run function ho9tocraft:skills/02_exc/divine_possession
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_offhand_ws] at @s run function ho9tocraft:skills/02_exc/offhand_weapon_skill
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_lb] at @s run function ho9tocraft:skills/02_exc/limit_break
execute as @a[predicate=ho9tocraft:item_selector/jobs/02_exc/exorcist_proc_test,scores={CURRENT_JOB=2}] at @s run function ho9tocraft:skills/02_exc/proc_fail
#endregion

#region PostProcess
execute as @a at @s if score @s SPEFF_DONE matches 1 run scoreboard players set @s SPEFF_DONE 0
execute as @a[tag=OffWS_Exec] at @s run tag @s remove OffWS_Exec
execute as @a[tag=LB_Exec] at @s run tag @s remove LB_Exec
execute as @e[type=armor_stand,tag=ShieldB_PosToRED] at @s anchored eyes unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=armor_stand,tag=ShieldB_PosToRED] at @s run scoreboard players add @s knockbacked 1
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU] at @s anchored eyes unless block ~ ~ ~ air run tp @s ~ ~1 ~
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU] at @s run scoreboard players add @s knockbacked 1
execute as @e[type=armor_stand,tag=ShieldB_PosToRED] at @s anchored eyes if block ~ ~ ~ air run tp @e[tag=ShieldB_RED,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=ShieldB_PosToRED] at @s anchored eyes if block ~ ~ ~ air run tag @e[tag=ShieldB_RED,limit=1,sort=nearest] remove ShieldB_RED
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU] at @s anchored eyes if block ~ ~ ~ air run tp @e[tag=ShieldB_BLU,limit=1,sort=nearest] @s
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU] at @s anchored eyes if block ~ ~ ~ air run tag @e[tag=ShieldB_BLU,limit=1,sort=nearest] remove ShieldB_BLU
execute as @e[type=armor_stand,tag=ShieldB_PosToRED] at @s if score @s knockbacked matches 40.. run kill @s
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU] at @s if score @s knockbacked matches 40.. run kill @s
#endregion
