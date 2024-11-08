#Stardiver(スターダイバー)

execute as @s at @s run tellraw @a ["",{ "bold": true, "italic": false, "translate": "use.stardiver.name", "fallback": "%1$s used \"Stardiver\"." , "with": [{ "selector": "@s" }]}]
execute as @s[tag=!STAGE_BOUND] at @s run tag @s add SDIVER_Exec
# Pre Particle
# Team = RED
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tag @e[team=BLU,sort=nearest,distance=..20,limit=1] add SDIVER_TGT_BLU
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tp @s @e[tag=SDIVER_TGT_BLU,sort=nearest,limit=1]
execute as @s[team=RED,tag=!STAGE_BOUND] at @s at @e[tag=SDIVER_TGT_BLU,sort=nearest,limit=1] as @e[team=BLU,distance=..5] at @s run damage @s 120.0 player_attack by @a[team=RED,tag=SDIVER_Exec,limit=1] from @a[team=RED,tag=SDIVER_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tag @e[team=RED,sort=nearest,distance=..20,limit=1] add SDIVER_TGT_RED
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tp @s @e[tag=SDIVER_TGT_RED,sort=nearest,limit=1]
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s at @e[tag=SDIVER_TGT_RED,sort=nearest,limit=1] as @e[team=RED,distance=..5] at @s run damage @s 120.0 player_attack by @a[team=BLU,tag=SDIVER_Exec,limit=1] from @a[team=BLU,tag=SDIVER_Exec,limit=1]
# Post Particles
# Post Process
# - LIMIT BREAK Accumulate
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
# - Recast Timer
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s MG_RECAST_T 40
# - Remove Tag for Detectors
execute as @s[tag=!STAGE_BOUND,tag=SDIVER_Exec] at @s run tag @s remove SDIVER_Exec
execute as @e[tag=SDIVER_TGT_RED] at @s run tag @s remove SDIVER_TGT_RED
execute as @e[tag=SDIVER_TGT_BLU] at @s run tag @s remove SDIVER_TGT_BLU
