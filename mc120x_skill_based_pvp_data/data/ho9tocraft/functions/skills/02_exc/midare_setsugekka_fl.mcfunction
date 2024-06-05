#Midare Setsugekka: Frenzied Laughter(乱れ雪月花・狂咲)
#define tag MSFL_Exec

execute as @s at @s run tag @s add MSFL_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run damage @s 158.4 player_attack by @a[team=RED,tag=MSFL_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s darkness 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s blindness 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s slowness 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s mining_fatigue 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s jump_boost 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s run effect give @s weakness 5 255 true
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s if score @s WS_RECAST_T matches 0..99 run scoreboard players set @s WS_RECAST_T 100
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s if score @s MG_RECAST_T matches 0..99 run scoreboard players set @s MG_RECAST_T 100
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s if score @s AB_RECAST_T matches 0..99 run scoreboard players set @s AB_RECAST_T 100
execute as @s[team=RED] at @s as @e[team=BLU,distance=..6,sort=nearest,limit=1] at @s if score @s LB_RECAST_T matches 0..99 run scoreboard players set @s LB_RECAST_T 100
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run damage @s 158.4 player_attack by @a[team=BLU,tag=MSFL_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s darkness 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s blindness 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s slowness 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s mining_fatigue 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s jump_boost 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s run effect give @s weakness 5 255 true
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s if score @s WS_RECAST_T matches 0..99 run scoreboard players set @s WS_RECAST_T 100
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s if score @s MG_RECAST_T matches 0..99 run scoreboard players set @s MG_RECAST_T 100
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s if score @s AB_RECAST_T matches 0..99 run scoreboard players set @s AB_RECAST_T 100
execute as @s[team=BLU] at @s as @e[team=RED,distance=..6,sort=nearest,limit=1] at @s if score @s LB_RECAST_T matches 0..99 run scoreboard players set @s LB_RECAST_T 100
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 200
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=MSFL_Exec] at @s run tag @s remove MSFL_Exec
# End of Proc.
execute as @s at @s if score @s PROC_TIMER_WS matches 1.. run scoreboard players set @s PROC_TIMER_WS 0
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/exorcist/extras/proc_end_ws
#endregion
