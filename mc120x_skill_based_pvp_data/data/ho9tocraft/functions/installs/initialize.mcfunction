#Datapack Initialization
#define score_holder ^VPHandler
#define score_holder *
#define team RED
#define team BLU
#define team Spectate
#define bossbar ho9tocraft:battle_timer Battle Timer

#Scoreboard
#Sections
#- Time Controls
#- PvP Objectives

#region Player Saturations
scoreboard objectives add death deathCount
#endregion

#region Scoreboard Initializer for Players
#scoreInit(var: -1 to 1, 
#'-1' means Not yet initialized,
#'0' means The player doesn't have Scoreboard,
#'1' means The player have Scoreboard)
scoreboard objectives add scoreInit dummy
#endregion

#region Time Controls
#Tick Loop(var: 1-20('20' means count reset))
scoreboard objectives add TICK_ROOP dummy
#1 sec. = 20 Ticks
scoreboard objectives add TICK_PER_SECONDS dummy
#1 LB Charge = 10 sec.
scoreboard objectives add LB_C_TIMING dummy
#endregion

#region PvP Objectives
#MAX_MP(const: 10k)
scoreboard objectives add MAX_MP dummy
#NOW_MP(var: 0 to 10k)
scoreboard objectives add NOW_MP dummy
#NOW_HP(var: GET from command 'data get entity Health 1.0')
scoreboard objectives add NOW_HP dummy
#NOW_HP_RED(var: GET from NOW_HP, for RED)
scoreboard objectives add NOW_HP_RED dummy
#NOW_HP_BLU(var: GET from NOW_HP, for BLU)
scoreboard objectives add NOW_HP_BLU dummy
#TEAMKILL_RED(var: GET from Section, for RED)
scoreboard objectives add TEAMKILL_RED teamkill.red
#TEAMKILL_BLU(var: GET from Section, for BLU)
scoreboard objectives add TEAMKILL_BLU teamkill.blue
#KILLEDTEAM_BLU(var: GET from Section, for RED)
scoreboard objectives add KILLEDTEAM_BLU killedByTeam.blue
#KILLEDTEAM_RED(var: GET from Section, for BLU)
scoreboard objectives add KILLEDTEAM_RED killedByTeam.red
#RESULT_RED(var: 0 to INT_MAX, for RED)
scoreboard objectives add RESULT_RED dummy
#RESULT_BLU(var: 0 to INT_MAX, for BLU)
scoreboard objectives add RESULT_BLU dummy
#CURRENT_JOB(var: -1 to INT_MAX('-1' means No job selected))
scoreboard objectives add CURRENT_JOB dummy
#WS_RECAST_T(var: 0 to INT_MAX('0' means Ready to Use))
scoreboard objectives add WS_RECAST_T dummy
#WS_RECAST_V(var: 0 to INT_MAX(UI))
scoreboard objectives add WS_RECAST_V dummy
#MG_RECAST_T(var: 0 to INT_MAX('0' means Ready to Use))
scoreboard objectives add MG_RECAST_T dummy
#MG_RECAST_V(var: 0 to INT_MAX(UI))
scoreboard objectives add MG_RECAST_V dummy
#CAST_TIMER(var: 0 to INT_MAX(for use Magics))
scoreboard objectives add CAST_TIMER dummy
#AB_RECAST_T(var: 0 to INT_MAX('0' means Ready to Use))
scoreboard objectives add AB_RECAST_T dummy
#AB_RECAST_V(var: 0 to INT_MAX(UI))
scoreboard objectives add AB_RECAST_V dummy
#LB_CHARGE(var: 0 to 100('100' means Ready to Use, Charging is Only Battle))
scoreboard objectives add LB_CHARGE dummy
#LB_RECAST_T(var: 0 to 100('0' means Ready to Charge))
scoreboard objectives add LB_RECAST_T dummy
#NOW_SURR_ENEMY(var: 0 to INT_MAX(More than 1 is considered tangential))
scoreboard objectives add NOW_SURR_ENEMY dummy
#BATTLE_TIMER(var: -1 to INT_MAX('0' means Time Up, value means timer seconds, '-1' means Lobby))
scoreboard objectives add BATTLE_TIMER dummy
#B_MVILLAGER(const: 2400)
scoreboard objectives add B_MVILLAGER dummy
scoreboard objectives add BMVILGR_CLC dummy
#B_SUPPLY(const: 3000)
scoreboard objectives add B_SUPPLY dummy
scoreboard objectives add B_SPL_CLC dummy
#BATTLE_COND(var: -1 is Lobby, 0 is BattleInit, 1 is Battle, 2 is BattleResult)
scoreboard objectives add BATTLE_COND dummy
#BATTLE_STAGE(var: -1 is Lobby, More than 0 are Battle Stage)
scoreboard objectives add BATTLE_STAGE dummy
#STAGE_VOTE(var: -1 is Unselected, More than 0 are Battle Stage)
scoreboard objectives add STAGE_VOTE trigger
#M_SHOP_POP
scoreboard objectives add M_SHOP_POP dummy
#endregion

#region SPEFF_TIMER(var: 0 to INT_MAX(for use Special Effects), 6 difficult Special Effects available)
scoreboard objectives add SPEFF_DONE dummy
scoreboard objectives add SPEFF_TIMER_0 dummy
scoreboard objectives add SPEFF_TIMER_1 dummy
scoreboard objectives add SPEFF_TIMER_2 dummy
scoreboard objectives add SPEFF_TIMER_3 dummy
scoreboard objectives add SPEFF_TIMER_4 dummy
scoreboard objectives add SPEFF_TIMER_5 dummy
#endregion

#region NGEFF_TIMER(var: 0 to INT_MAX(for use Negative Special Effects), 6 difficult Negative Special Effects available)
scoreboard objectives add NGEFF_DONE dummy
scoreboard objectives add NGEFF_TIMER_0 dummy
scoreboard objectives add NGEFF_TIMER_1 dummy
scoreboard objectives add NGEFF_TIMER_2 dummy
scoreboard objectives add NGEFF_TIMER_3 dummy
scoreboard objectives add NGEFF_TIMER_4 dummy
scoreboard objectives add NGEFF_TIMER_5 dummy
# ELDEN RING Based Negative Effect
## Poison (var: 0 to 600, 600 means POISON, add POISON Tags and NGEFF_TIMER(20 sec.))
scoreboard objectives add POISON_TIMER dummy
## Scarlet Rot (var: 0 to 600, 600 means SCARLET ROT, add SCARROT Tags and NGEFF_TIMER(30 sec.))
scoreboard objectives add SCARROT_TIMER dummy
## Blood Loss (var: 0 to 400, 400 means BLOOD LOSS)
scoreboard objectives add BLOOD_TIMER dummy
## Frostbite (var: 0 to 600, 600 means FROSTBITE, add FROSTBITE Tags and NGEFF_TIMER(10 sec.))
scoreboard objectives add FROST_TIMER dummy
## Madness (var: 0 to 600, 600 means MADNESS.)
scoreboard objectives add MADNESS_TIMER dummy
## Death (var: 0 to 600, 600 means DEATH.)
scoreboard objectives add DEATH_TIMER dummy
#endregion

#region PROC_TIMER(var: 0 to INT_MAX(for use Proc Skills))
scoreboard objectives add PROC_TIMER_WS dummy
scoreboard objectives add PROC_TIMER_MG dummy
#endregion

#region CHARGE_ACT(var: 0 to INT_MAX(for use Shadowbringer, etc.))
scoreboard objectives add CHARGE_ACT dummy
#endregion

#region knockback TP Timeout(var: 1 to 60)
scoreboard objectives add knockbacked dummy
#endregion

#region Scoreboard Default Value for Dummy Player
scoreboard players set ^VPHandler TICK_ROOP 1
scoreboard players set ^VPHandler TICK_PER_SECONDS 20
scoreboard players set ^VPHandler LB_C_TIMING 1
scoreboard players set ^VPHandler RESULT_RED 0
scoreboard players set ^VPHandler RESULT_BLU 0
scoreboard players set ^VPHandler BATTLE_TIMER -1
scoreboard players set ^VPHandler B_MVILLAGER 2400
scoreboard players set ^VPHandler B_SUPPLY 3000
scoreboard players set ^VPHandler BATTLE_COND -1
scoreboard players set ^VPHandler BATTLE_STAGE -1
scoreboard players set ^VPHandler M_SHOP_POP -1
#endregion

#region Team Settings
# RED
team add RED
team modify RED color red
team modify RED collisionRule pushOtherTeams
team modify RED deathMessageVisibility hideForOtherTeams
team modify RED displayName {"color":"red","translate":"team.ho9tocraft.red.display","fallback":"Red"}
team modify RED friendlyFire false
team modify RED nametagVisibility hideForOtherTeams
team modify RED prefix {"color":"red","translate":"team.ho9tocraft.red.prefix","fallback":"[RED]"}
team modify RED seeFriendlyInvisibles true
# BLU
team add BLU
team modify BLU color blue
team modify BLU collisionRule pushOtherTeams
team modify BLU deathMessageVisibility always
team modify BLU displayName {"color":"blue","translate":"team.ho9tocraft.blue.display","fallback":"Blue"}
team modify BLU friendlyFire false
team modify BLU nametagVisibility hideForOtherTeams
team modify BLU prefix {"color":"blue","translate":"team.ho9tocraft.blue.prefix","fallback":"[BLU]"}
team modify BLU seeFriendlyInvisibles true
# Spectate
team add Spectate
team modify Spectate color gray
team modify Spectate collisionRule never
team modify Spectate deathMessageVisibility always
team modify Spectate displayName {"color":"gray","text":"Spec."}
team modify Spectate friendlyFire false
team modify Spectate nametagVisibility hideForOtherTeams
team modify Spectate seeFriendlyInvisibles true
#endregion

#region BossBar Settings
bossbar add ho9tocraft:battle_timer {"translate": "bossbar.battle_timer.init", "fallback": "Warming up Time"}
bossbar set ho9tocraft:battle_timer color yellow
bossbar set ho9tocraft:battle_timer max 2400
bossbar set ho9tocraft:battle_timer value 0
bossbar set ho9tocraft:battle_timer style notched_10
bossbar set ho9tocraft:battle_timer visible false
#endregion
