#Hissatsu: Gyoten(必殺剣・暁天)
#define tag Gyoten_Exec
#define tag HISSATSU_GYOTEN_BLU
#define tag HISSATSU_GYOTEN_RED
#define tag STAGE_BOUND

execute as @s[tag=!STAGE_BOUND] at @s run tag @s add Gyoten_Exec
#region pre-moving Particle Effect
execute as @s[tag=!STAGE_BOUND] at @s run particle end_rod ~ ~ ~ 0.5 0.1 0.5 0.1 100 normal @a[distance=..30]
#endregion
#region team=RED
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tag @a[team=BLU,sort=nearest,distance=..20,limit=1] add HISSATSU_GYOTEN_BLU
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tp @s @a[tag=HISSATSU_GYOTEN_BLU,sort=nearest,distance=..20,limit=1]
execute as @s[team=RED,tag=!STAGE_BOUND] at @s at @a[tag=HISSATSU_GYOTEN_BLU,sort=nearest,distance=..5,limit=1] as @e[team=BLU,sort=nearest,distance=..5] at @s run damage @s 33.0 minecraft:player_attack by @a[team=RED,tag=Gyoten_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tag @a[team=RED,sort=nearest,distance=..20,limit=1] add HISSATSU_GYOTEN_RED
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tp @s @a[tag=HISSATSU_GYOTEN_RED,sort=nearest,distance=..20,limit=1]
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s at @a[tag=HISSATSU_GYOTEN_RED,sort=nearest,distance=..5,limit=1] as @e[team=RED,sort=nearest,distance=..5] at @s run damage @s 33.0 minecraft:player_attack by @a[team=BLU,tag=Gyoten_Exec,limit=1]
#endregion
#region PostProcess
# Particles
execute as @s[tag=!STAGE_BOUND] at @s run particle sweep_attack ~ ~ ~ 5 0.1 5 1 500 normal @a[distance=..30]
# Recast Timer
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s WS_RECAST_T 200
execute as @s[tag=!STAGE_BOUND] at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s[tag=!STAGE_BOUND,tag=Gyoten_Exec] at @s run tag @s remove Gyoten_Exec
execute as @a[tag=HISSATSU_GYOTEN_BLU] at @s run tag @s remove HISSATSU_GYOTEN_BLU
execute as @a[tag=HISSATSU_GYOTEN_RED] at @s run tag @s remove HISSATSU_GYOTEN_RED
#endregion
