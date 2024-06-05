#Battle Start
effect clear @a saturation
gamemode adventure @a[scores={CURRENT_JOB=0..}]
gamemode spectator @a[scores={CURRENT_JOB=-1}]
team join Spectate @a[scores={CURRENT_JOB=-1}]
scoreboard players reset * NOW_HP_BLU
scoreboard players reset * NOW_HP_RED
scoreboard players set @a[team=RED] NOW_HP_RED 0
scoreboard players set @a[team=BLU] NOW_HP_BLU 0
scoreboard players set @a WS_RECAST_T 0
scoreboard players set @a MG_RECAST_T 0
scoreboard players set @a AB_RECAST_T 0
scoreboard players set @a LB_CHARGE 0
scoreboard players set @a LB_RECAST_T 0
scoreboard players set ^VPHandler BATTLE_COND 0
scoreboard players set ^VPHandler BATTLE_TIMER 2400
scoreboard objectives setdisplay sidebar.team.blue NOW_HP_BLU
scoreboard objectives setdisplay sidebar.team.red NOW_HP_RED
execute if score ^VPHandler BATTLE_STAGE matches 0 run function ho9tocraft:battle/stages/tpto/stage_00_spawnpoint
execute if score ^VPHandler BATTLE_STAGE matches 0 run function ho9tocraft:battle/stages/respawn_points/stage_00
function ho9tocraft:battle/process/init_battle_job
bossbar set ho9tocraft:battle_timer players @a
bossbar set ho9tocraft:battle_timer visible true
effect give @a[gamemode=adventure] resistance 120 4 true
