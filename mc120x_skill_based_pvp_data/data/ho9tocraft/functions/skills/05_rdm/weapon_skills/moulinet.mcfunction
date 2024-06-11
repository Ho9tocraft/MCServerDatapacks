#Moulinet(ムーリネ)
#define tag Moul_Exec

execute as @s at @s run tag @s add Moul_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..8] at @s run damage @s 21.6 player_attack by @a[team=RED,tag=Moul_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..8] at @s run damage @s 21.6 player_attack by @a[team=BLU,tag=Moul_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..97 run scoreboard players add @s LB_CHARGE 3
execute as @s at @s if score @s LB_CHARGE matches 98..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# ShiftChange
execute as @s[tag=ShiftWhite] at @s run function ho9tocraft:skills/05_rdm/common/postproc/to_black
execute as @s[tag=ShiftBlack] at @s run function ho9tocraft:skills/05_rdm/common/postproc/to_white
# Remove Exec. User Spec.
execute as @s[tag=Moul_Exec] at @s run tag @s remove Moul_Exec
# End of Proc.
execute as @s at @s if score @s PROC_TIMER_MG matches 1.. run scoreboard players set @s PROC_TIMER_MG 0
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/finish/proc_end_mg
#endregion
