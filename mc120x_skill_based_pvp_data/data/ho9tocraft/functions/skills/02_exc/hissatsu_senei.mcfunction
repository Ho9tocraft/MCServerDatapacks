#Hissatsu: Senei(必殺剣・閃影)
#define tag Senei_Exec

execute as @s at @s run tellraw @a ["",{ "bold": false, "italic": false, "translate": "use.hissatsu_senei.name", "fallback": "%1$s used \"Hissatsu: Senei\".", "with": [ { "selector": "@s" }]}]
execute as @s at @s run tag @s add Senei_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run damage @s 106.425 player_attack by @a[team=RED,tag=Senei_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run damage @s 106.425 player_attack by @a[team=BLU,tag=Senei_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s[tag=DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s[tag=!DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s[tag=DIVPOS_EFFECT] at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
# Recast Timer
execute as @s[tag=DIVPOS_EFFECT] at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s[tag=!DIVPOS_EFFECT] at @s run scoreboard players set @s WS_RECAST_T 200
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Remove Tag for Detectors
execute as @s[tag=Senei_Exec] at @s run tag @s remove Senei_Exec
# Convert Item to "Midare Setsugekka: Frenzied Laughter" when "Divine Possession" Activated
execute as @s[tag=DIVPOS_EFFECT] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/exorcist/extras/midare_setsugekka
execute as @s[tag=!DIVPOS_EFFECT] at @s if score @s PROC_TIMER_WS matches 1.. run scoreboard players set @s PROC_TIMER_WS 0
execute as @s[tag=!DIVPOS_EFFECT] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/exorcist/extras/proc_end_ws
#endregion
