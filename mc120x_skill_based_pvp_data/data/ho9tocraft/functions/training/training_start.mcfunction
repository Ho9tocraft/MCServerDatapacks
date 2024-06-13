#Training Start
execute as @s at @s run scoreboard players set @s WS_RECAST_T 0
execute as @s at @s run scoreboard players set @s MG_RECAST_T 0
execute as @s at @s run scoreboard players set @s AB_RECAST_T 0
execute as @s at @s run scoreboard players set @s LB_RECAST_T 0
execute as @s at @s run scoreboard players set @s LB_CHARGE 0
execute as @s at @s run team join RED @s
execute as @s at @s run function ho9tocraft:battle/process/init_battle_job
