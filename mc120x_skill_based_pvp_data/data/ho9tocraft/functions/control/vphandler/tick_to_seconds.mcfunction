#Tick->Seconds Converter
scoreboard players add ^VPHandler TICK_ROOP 1
function ho9tocraft:skills/skills_wrapper
function ho9tocraft:control/vphandler/announce_enemy
#region WS_RECAST
execute as @e[scores={WS_RECAST_T=1..}] at @s run scoreboard players remove @s WS_RECAST_T 1
execute as @a at @s run scoreboard players operation @s WS_RECAST_V = @s WS_RECAST_T
execute as @a[scores={WS_RECAST_T=1..}] at @s run scoreboard players operation @s WS_RECAST_V /= ^VPHandler TICK_PER_SECONDS
execute as @a[scores={WS_RECAST_T=1..}] at @s run scoreboard players add @s WS_RECAST_V 1
#endregion
#region MG_RECAST
execute as @e[scores={MG_RECAST_T=1..}] at @s run scoreboard players remove @s MG_RECAST_T 1
execute as @a at @s run scoreboard players operation @s MG_RECAST_V = @s MG_RECAST_T
execute as @a[scores={MG_RECAST_T=1..}] at @s run scoreboard players operation @s MG_RECAST_V /= ^VPHandler TICK_PER_SECONDS
execute as @a[scores={MG_RECAST_T=1..}] at @s run scoreboard players add @s MG_RECAST_V 1
#endregion
#region AB_RECAST
execute as @e[scores={AB_RECAST_T=1..}] at @s run scoreboard players remove @s AB_RECAST_T 1
execute as @a at @s run scoreboard players operation @s AB_RECAST_V = @s AB_RECAST_T
execute as @a[scores={AB_RECAST_T=1..}] at @s run scoreboard players operation @s AB_RECAST_V /= ^VPHandler TICK_PER_SECONDS
execute as @a[scores={AB_RECAST_T=1..}] at @s run scoreboard players add @s AB_RECAST_V 1
#endregion
#region AR_RECAST
execute as @e[scores={AR_RECAST_T=1..}] at @s run scoreboard players remove @s AR_RECAST_T 1
execute as @a at @s run scoreboard players operation @s AR_RECAST_V = @s AR_RECAST_T
execute as @a[scores={AR_RECAST_T=1..}] at @s run scoreboard players operation @s AR_RECAST_V /= ^VPHandler TICK_PER_SECONDS
execute as @a[scores={AR_RECAST_T=1..}] at @s run scoreboard players add @s AR_RECAST_V 1
#endregion
#region LB_RECAST
execute as @a[scores={LB_RECAST_T=1..}] at @s run scoreboard players remove @s LB_RECAST_T 1
#endregion
#region HPStat_Sync
execute as @a at @s store result score @s NOW_HP run data get entity @s Health
execute as @a[team=RED] at @s if score ^VPHandler BATTLE_COND matches 0..2 store result score @s NOW_HP_RED run scoreboard players get @s NOW_HP
execute as @a[team=BLU] at @s if score ^VPHandler BATTLE_COND matches 0..2 store result score @s NOW_HP_BLU run scoreboard players get @s NOW_HP
execute as @a at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s NOW_HP_RED 0
execute as @a at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s NOW_HP_BLU 0
#endregion
#region MPStat_OverflowSync
execute as @a at @s if score @s NOW_MP > @s MAX_MP run scoreboard players operation @s NOW_MP = @s MAX_MP
#endregion
#region SpecialEffect Timer Count
execute as @e at @s if score @s SPEFF_TIMER_0 matches 1.. run scoreboard players remove @s SPEFF_TIMER_0 1
execute as @e at @s if score @s SPEFF_TIMER_1 matches 1.. run scoreboard players remove @s SPEFF_TIMER_1 1
execute as @e at @s if score @s SPEFF_TIMER_2 matches 1.. run scoreboard players remove @s SPEFF_TIMER_2 1
execute as @e at @s if score @s SPEFF_TIMER_3 matches 1.. run scoreboard players remove @s SPEFF_TIMER_3 1
execute as @e at @s if score @s SPEFF_TIMER_4 matches 1.. run scoreboard players remove @s SPEFF_TIMER_4 1
execute as @e at @s if score @s SPEFF_TIMER_5 matches 1.. run scoreboard players remove @s SPEFF_TIMER_5 1
#endregion
#region Negative SpecialEffect Timer Count
# Common Negative SpecialEffect
execute as @e at @s if score @s NGEFF_TIMER_0 matches 1.. run scoreboard players remove @s NGEFF_TIMER_0 1
execute as @e at @s if score @s NGEFF_TIMER_1 matches 1.. run scoreboard players remove @s NGEFF_TIMER_1 1
execute as @e at @s if score @s NGEFF_TIMER_2 matches 1.. run scoreboard players remove @s NGEFF_TIMER_2 1
execute as @e at @s if score @s NGEFF_TIMER_3 matches 1.. run scoreboard players remove @s NGEFF_TIMER_3 1
execute as @e at @s if score @s NGEFF_TIMER_4 matches 1.. run scoreboard players remove @s NGEFF_TIMER_4 1
execute as @e at @s if score @s NGEFF_TIMER_5 matches 1.. run scoreboard players remove @s NGEFF_TIMER_5 1
# ELDEN RING Based Negative Effect
execute as @e at @s if score @s POISON_TIMER matches 1.. run scoreboard players remove @s POISON_TIMER 1
execute as @e at @s if score @s SCARROT_TIMER matches 1.. run scoreboard players remove @s SCARROT_TIMER 1
execute as @e at @s if score @s BLOOD_TIMER matches 1.. run scoreboard players remove @s BLOOD_TIMER 1
execute as @e at @s if score @s FROST_TIMER matches 1.. run scoreboard players remove @s FROST_TIMER 1
execute as @e at @s if score @s MADNESS_TIMER matches 1.. run scoreboard players remove @s MADNESS_TIMER 1
execute as @e at @s if score @s DEATH_TIMER matches 1.. run scoreboard players remove @s DEATH_TIMER 1
#endregion
#region Proc. Timer Count
execute as @a at @s if score @s PROC_TIMER_WS matches 1.. run scoreboard players remove @s PROC_TIMER_WS 1
execute as @a at @s if score @s PROC_TIMER_MG matches 1.. run scoreboard players remove @s PROC_TIMER_MG 1
execute as @a at @s if score @s PROC_TIMER_AB matches 1.. run scoreboard players remove @s PROC_TIMER_AB 1
# RDM ShiftEffect Count
execute as @a at @s if score @s RDM_ShiftEffect matches 1.. run scoreboard players remove @s RDM_ShiftEffect 1
#endregion
#region Miracle Villager Despawn
execute as @e[type=villager,tag=MVillagerDesp] at @s if score @s SPEFF_TIMER_0 matches 0 run kill @s
#endregion
#region Negative Effect Remove when died
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_0 matches 1.. run scoreboard players set @s NGEFF_TIMER_0 0
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_1 matches 1.. run scoreboard players set @s NGEFF_TIMER_1 0
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_2 matches 1.. run scoreboard players set @s NGEFF_TIMER_2 0
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_3 matches 1.. run scoreboard players set @s NGEFF_TIMER_3 0
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_4 matches 1.. run scoreboard players set @s NGEFF_TIMER_4 0
execute as @a at @s if score @s death matches 1.. if score @s NGEFF_TIMER_5 matches 1.. run scoreboard players set @s NGEFF_TIMER_5 0
#endregion
#region Give Saturation Effect when died
execute as @a at @s if score ^VPHandler BATTLE_COND matches -1 run effect give @s saturation infinite 3 true
# THE EIGHTH UMBRAL ERA Extra Win
execute as @a at @s if score @s[tag=BRose_EFFECT,team=RED] death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run scoreboard players set ^VPHandler RESULT_BLU 2147483647
execute as @a at @s if score @s[tag=BRose_EFFECT,team=RED] death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run scoreboard players set ^VPHandler RESULT_RED 0
execute as @a at @s if score @s[tag=BRose_EFFECT,team=BLU] death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run scoreboard players set ^VPHandler RESULT_RED 2147483647
execute as @a at @s if score @s[tag=BRose_EFFECT,team=BLU] death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run scoreboard players set ^VPHandler RESULT_BLU 0
execute as @a at @s if score @s[tag=BRose_EFFECT] death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run scoreboard players set ^VPHandler BATTLE_TIMER 1
# If Battle, Give Resistance V 5 sec.
execute as @a at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run effect give @s saturation 200 3 true
execute as @a at @s if score @s death matches 1.. if score ^VPHandler BATTLE_COND matches 0..2 run effect give @s resistance 5 4 true
execute as @a[nbt={Inventory:[{id:"minecraft:glass_bottle"}]}] at @s if score ^VPHandler BATTLE_COND matches 0..2 run clear @s glass_bottle
#endregion
#region Remove InGround Arrow
execute as @e[predicate=ho9tocraft:passive_selector/remove_inground_arrow] at @s run kill @s
#endregion
#region Remove Expired Nuke
execute as @e[type=armor_stand,tag=RACT_USER] at @s if score @s SPEFF_TIMER_0 matches 0 run kill @s
#endregion
#region Remove Light Flood when BATTLE_COND is 2 or -1
execute as @a at @s unless score @s MAX_MP matches 10000 run scoreboard players set @s MAX_MP 10000
execute as @e[tag=BRose_Exec] at @s if score ^VPHandler BATTLE_COND matches -1 run tag @s remove BRose_Exec
execute as @e[tag=BRose_Exec] at @s if score ^VPHandler BATTLE_COND matches 2 run tag @s remove BRose_Exec
execute as @e[tag=BRose_EFFECT] at @s if score ^VPHandler BATTLE_COND matches -1 run tag @s remove BRose_EFFECT
execute as @e[tag=BRose_EFFECT] at @s if score ^VPHandler BATTLE_COND matches 2 run tag @s remove BRose_EFFECT
#endregion
function ho9tocraft:battle/process/battle_process
execute if score ^VPHandler TICK_ROOP matches 20 run function #ho9tocraft:vphandlers_post
