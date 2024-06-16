#Skills Wrapper
#define tag LB_Exec
#define tag OffWS_Exec
#define damage_type ho9tocraft:limit_break LB Damage
#define damage_type ho9tocraft:limit_break_magic Indirect Magic LB Damage
#define damage_type ho9tocraft:ngeffect/poison Poison Damage
#define damage_type ho9tocraft:ngeffect/scarlet_rot Scarlet Rot Damage
#define damage_type ho9tocraft:ngeffect/frostbite Frostbite Damage
#define damage_type ho9tocraft:ngeffect/madness Madness Damage
#define damage_type ho9tocraft:ngeffect/death Death Blighted Damage
#define damage_type ho9tocraft:ngeffect/radiation Radiation Pollution Damage

#region Common Magic Casting
execute as @a[predicate=ho9tocraft:item_selector/common_mgcasting] at @s run scoreboard players remove @s CAST_TIMER 1
function #ho9tocraft:jobs/job_magic_castfail
#endregion
#region Arrow Count
execute as @a at @s store result score @s ARROW_COUNT run clear @s arrow 0
execute as @a at @s store result score @s T_ARROW_C run clear @s tipped_arrow 0
execute as @a at @s if score @s ARROW_COUNT > ^VPHandler MAX_ARROW run function ho9tocraft:skills/03_brd/bard_arrow_overflow
execute as @a at @s if score @s T_ARROW_C matches 2.. run function ho9tocraft:skills/03_brd/bard_tipped_arrow_overflow
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
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/01_drk/ws_combo_1] at @s run function ho9tocraft:skills/01_drk/shadowbringer
execute as @a[predicate=ho9tocraft:item_selector/jobs/01_drk/dark_knight_ws] at @s run function ho9tocraft:skills/01_drk/delirium_spiller
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/01_drk/mg_combo_1] at @s run function ho9tocraft:skills/01_drk/salt_and_darkness
execute as @a[predicate=ho9tocraft:item_selector/jobs/01_drk/dark_knight_mg] at @s run function ho9tocraft:skills/01_drk/unleash
execute as @a[predicate=ho9tocraft:item_selector/jobs/01_drk/dark_knight_ab] at @s run function ho9tocraft:skills/01_drk/blackest_night
execute as @a[predicate=ho9tocraft:item_selector/jobs/01_drk/dark_knight_lb] at @s run function ho9tocraft:skills/01_drk/limit_break
execute as @a[predicate=ho9tocraft:item_selector/jobs/01_drk/dark_knight_proc_test,scores={CURRENT_JOB=1}] at @s run function ho9tocraft:skills/01_drk/proc_fail
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
#region ID=3, DisplayName=Bard
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/03_brd/ws_combo_1] at @s run function ho9tocraft:skills/03_brd/refulgent_arrow
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_ws] at @s run function ho9tocraft:skills/03_brd/burst_shot
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_mg] at @s run function ho9tocraft:skills/03_brd/caustic_bite
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_ab] at @s run function ho9tocraft:skills/03_brd/radiant_finale
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_lb] at @s run function ho9tocraft:skills/03_brd/limit_break
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_proc_test] at @s run function ho9tocraft:skills/03_brd/proc_fail
execute as @a[predicate=ho9tocraft:item_selector/jobs/03_brd/bard_reload_arrow] at @s run item replace entity @s inventory.0 with arrow 32
#endregion
#region ID=4, DisplayName=Dragoon
#endregion
#region ID=5, DisplayName=Red Mage
#define tag ShiftWhite
#define tag ShiftBlack
# WS/Mg Common
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/ws_mg_common/resolution] at @s run function ho9tocraft:skills/05_rdm/common/resolution
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/ws_mg_common/scorch] at @s run function ho9tocraft:skills/05_rdm/common/scorch
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/ws_mg_common/verholy] at @s run function ho9tocraft:skills/05_rdm/common/verholy
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/ws_mg_common/verflare] at @s run function ho9tocraft:skills/05_rdm/common/verflare
# Weapon Skills
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/with_manafication/enchanted_redoublement] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/enchanted_redoublement
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/with_manafication/enchanted_zwerchhau] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/enchanted_zwerchhau
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/with_manafication/enchanted_riposte] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/enchanted_riposte
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/without_manafication/redoublement] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/redoublement
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/without_manafication/zwerchhau] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/zwerchhau
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/without_manafication/riposte] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/riposte
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_ws] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/corps_a_corps
# Magics
## Multi-target Roop
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/with_manafication/enchanted_moulinet] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/enchanted_moulinet
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verthunder_ii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/verthunder_ii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verthunder_ii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/verthunder_ii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_veraero_ii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/veraero_ii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_veraero_ii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/veraero_ii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_impact_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/impact
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_impact_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/impact
## Single-target Roop
execute as @a[predicate=ho9tocraft:item_selector/jobs/proc/05_rdm/without_manafication/moulinet] at @s run function ho9tocraft:skills/05_rdm/weapon_skills/moulinet
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verfire_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/verfire
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verfire_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/verfire
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verthunder_iii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/verthunder_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verthunder_iii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/verthunder_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verstone_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/verstone
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_verstone_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/verstone
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_veraero_iii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/veraero_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_veraero_iii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/veraero_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_jolt_ii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/jolt_ii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_jolt_ii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/jolt_ii
## Start Actions
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_acceleration] at @s run function ho9tocraft:skills/05_rdm/magics/acceleration
# Abilities
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_vercure_iii_exec,tag=Red_Magic_Cast] at @s run function ho9tocraft:skills/05_rdm/exec_magics/vercure_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/magics/red_mage_vercure_iii_cast_begin] at @s run function ho9tocraft:skills/05_rdm/magics/vercure_iii
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_ab] at @s run function ho9tocraft:skills/05_rdm/common/manafication
# LIMIT BREAK
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_lb_exec,tag=CasterLB_Cast] at @s run function ho9tocraft:skills/05_rdm/common/limit_break_exec
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_lb_cast_begin] at @s run function ho9tocraft:skills/05_rdm/common/limit_break
# Proc Process
execute as @a[predicate=ho9tocraft:item_selector/jobs/05_rdm/red_mage_proc_test,scores={CURRENT_JOB=5}] run function ho9tocraft:skills/05_rdm/common/proc_fail
#endregion
#region Support Item
execute as @a[predicate=ho9tocraft:item_selector/support_item/ambrosia] at @s run function ho9tocraft:support_item/ambrosia
execute as @a[predicate=ho9tocraft:item_selector/support_item/knight_errantry] at @s run function ho9tocraft:support_item/knight_errantry
execute as @a[predicate=ho9tocraft:item_selector/support_item/tact_nuke] at @s run function ho9tocraft:support_item/tactical_nuke
execute as @a[predicate=ho9tocraft:item_selector/support_item/black_rose] at @s run function ho9tocraft:support_item/black_rose
function ho9tocraft:support_item/grenade
#endregion

#region PostProcess
execute as @e at @s if score @s SPEFF_DONE matches 1 run scoreboard players set @s SPEFF_DONE 0
execute as @e at @s if score @s NGEFF_DONE matches 1 run scoreboard players set @s NGEFF_DONE 0
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
