#Tenka Goken: Binary Star(天下五剣・連星)
#define tag Goken_Exec

execute as @s at @s run tag @s add Goken_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..8] at @s run damage @s 57.75 player_attack by @a[team=RED,tag=Goken_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Goken_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..8] at @s run damage @s 57.75 player_attack by @a[team=BLU,tag=Goken_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Goken_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# Additional Effect
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 200
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=Goken_Exec] at @s run tag @s remove Goken_Exec
# End of Proc.
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/exorcist/extras/proc_end_mg
#endregion
