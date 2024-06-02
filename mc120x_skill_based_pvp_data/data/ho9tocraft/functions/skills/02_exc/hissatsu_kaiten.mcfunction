#Hissatsu: Kaiten(必殺剣・廻天)
#define tag Kaiten_Exec

execute as @s at @s run tag @s add Kaiten_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest] at @s run damage @s 24.75 minecraft:player_attack by @a[team=RED,tag=Kaiten_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest] at @s run damage @s 24.75 minecraft:player_attack by @a[team=BLU,tag=Kaiten_Exec,limit=1]
#endregion
#region PostProcess
# Particles
execute as @s at @s run particle sweep_attack ~ ~ ~ 5 0.1 5 1 500 normal @a[distance=..30]
# Additional Effect
execute as @s at @s run effect give @s minecraft:strength 5 0 false
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
execute as @s[tag=Kaiten_Exec] at @s run tag @s remove Kaiten_Exec
# Convert Item to "Hissatsu: Guren"
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/exorcist/extras/hissatsu_guren
#endregion
