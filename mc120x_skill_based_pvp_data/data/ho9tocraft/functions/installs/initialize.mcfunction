#Datapack Initialization
#define score_holder ^VPHandler
#define team RED
#define team BLU

#Scoreboard
#Sections
#- Time Controls
#- PvP Objectives

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
#BATTLE_COND(var: -1 is Lobby, 0 is BattleInit, 1 is Battle, 2 is BattleResult)
scoreboard objectives add BATTLE_COND dummy
#BATTLE_STAGE(var: -1 is Lobby, More than 0 are Battle Stage)
scoreboard objectives add BATTLE_STAGE dummy
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

#region Scoreboard Default Value for Dummy Player
scoreboard players set ^VPHandler TICK_ROOP 1
scoreboard players set ^VPHandler TICK_PER_SECONDS 20
scoreboard players set ^VPHandler LB_C_TIMING 1
scoreboard players set ^VPHandler RESULT_RED 0
scoreboard players set ^VPHandler RESULT_BLU 0
scoreboard players set ^VPHandler BATTLE_TIMER -1
scoreboard players set ^VPHandler BATTLE_COND -1
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
team modify BLU deathMessageVisibility hideForOtherTeams
team modify BLU displayName {"color":"blue","translate":"team.ho9tocraft.blue.display","fallback":"Blue"}
team modify BLU friendlyFire false
team modify BLU nametagVisibility hideForOtherTeams
team modify BLU prefix {"color":"blue","translate":"team.ho9tocraft.blue.prefix","fallback":"[BLU]"}
team modify BLU seeFriendlyInvisibles true
#endregion
