#Riposte(リポスト)
#define tag Ripo_Exec

execute as @s at @s run tag @s add Ripo_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run damage @s 46.8 player_attack by @a[team=RED,tag=Ripo_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run damage @s 46.8 player_attack by @a[team=BLU,tag=Ripo_Exec,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=Ripo_Exec] at @s run tag @s remove Ripo_Exec
# Convert Item to "Zwerchhau"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/weapon_skills/without_manafication/ws_combo_2
#endregion
