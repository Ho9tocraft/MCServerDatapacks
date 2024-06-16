#Hissatsu: Gyoten(必殺剣・暁天)
#define tag Gyoten_Exec
#define tag HISSATSU_GYOTEN_BLU
#define tag HISSATSU_GYOTEN_RED
#define tag STAGE_BOUND

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.hissatsu_gyoten.name", "fallback": "%1$s used \"Hissatsu: Gyoten\".", "with": [ { "selector": "@s" }]}]
execute as @s[tag=!STAGE_BOUND] at @s run tag @s add Gyoten_Exec
#region pre-moving Particle Effect
execute as @s[tag=!STAGE_BOUND] at @s run particle end_rod ~ ~ ~ 0.5 0.1 0.5 0.1 100 normal @a[distance=..30]
#endregion
#region team=RED
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tag @e[team=BLU,sort=nearest,distance=..20,limit=1] add HISSATSU_GYOTEN_BLU
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tp @s @e[tag=HISSATSU_GYOTEN_BLU,sort=nearest,distance=..20,limit=1]
execute as @s[team=RED,tag=!STAGE_BOUND] at @s at @e[tag=HISSATSU_GYOTEN_BLU,sort=nearest,distance=..5,limit=1] as @e[team=BLU,sort=nearest,distance=..5] at @s run damage @s 49.5 minecraft:player_attack by @a[team=RED,tag=Gyoten_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tag @e[team=RED,sort=nearest,distance=..20,limit=1] add HISSATSU_GYOTEN_RED
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tp @s @e[tag=HISSATSU_GYOTEN_RED,sort=nearest,distance=..20,limit=1]
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s at @e[tag=HISSATSU_GYOTEN_RED,sort=nearest,distance=..5,limit=1] as @e[team=RED,sort=nearest,distance=..5] at @s run damage @s 49.5 minecraft:player_attack by @a[team=BLU,tag=Gyoten_Exec,limit=1]
#endregion
#region PostProcess
# Particles
execute as @s[tag=!STAGE_BOUND] at @s run particle sweep_attack ~ ~ ~ 5 0.1 5 1 500 normal @a[distance=..30]
# LIMIT BREAK Accumulate
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s PROC_TIMER_WS 300
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=!STAGE_BOUND,tag=Gyoten_Exec] at @s run tag @s remove Gyoten_Exec
execute as @e[tag=HISSATSU_GYOTEN_BLU] at @s run tag @s remove HISSATSU_GYOTEN_BLU
execute as @e[tag=HISSATSU_GYOTEN_RED] at @s run tag @s remove HISSATSU_GYOTEN_RED
# Convert Item to "Hissatsu: Senei"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/exorcist/extras/hissatsu_senei
#endregion
