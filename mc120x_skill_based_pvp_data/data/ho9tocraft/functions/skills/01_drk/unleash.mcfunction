#Unleash(アンリーシュ)
#define tag Unlsh_Exec

execute as @s at @s run tag @s add Unlsh_Exec
#region team=RED
execute as @a[team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest] at @s run damage @s 19.2 indirect_magic by @a[team=RED,tag=Unlsh_Exec,sort=nearest,limit=1] from @a[team=RED,tag=Unlsh_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @a[team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest] at @s run damage @s 19.2 indirect_magic by @a[team=BLU,tag=Unlsh_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=Unlsh_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# Additional Effect
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s run scoreboard players set @s PROC_TIMER_MG 300
execute as @s at @s if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=Unlsh_Exec] at @s run tag @s remove Unlsh_Exec
# Convert Item to "Salt and Darkness"
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/dark_knight/extras/salt_and_darkness
#endregion
