#Tick->Seconds Converter
scoreboard players add ^VPHandler TICK_ROOP 1
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
#region HPStat_Sync
execute as @a at @s store result score @s NOW_HP run data get entity @s Health
execute as @a[team=RED] at @s if score ^VPHandler BATTLE_COND matches 0..2 store result score @s NOW_HP_RED run scoreboard players get @s NOW_HP
execute as @a[team=BLU] at @s if score ^VPHandler BATTLE_COND matches 0..2 store result score @s NOW_HP_BLU run scoreboard players get @s NOW_HP
execute as @a at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s NOW_HP_RED 0
execute as @a at @s if score ^VPHandler BATTLE_COND matches -1 run scoreboard players set @s NOW_HP_BLU 0
#endregion
execute if score ^VPHandler TICK_ROOP matches 20 run function #ho9tocraft:vphandlers_post
