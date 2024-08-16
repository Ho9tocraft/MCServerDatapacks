#High Jump(ハイジャンプ)

execute as @s at @s run tellraw @a ["",{"bold": false, "italic": false, "translate": "use.high_jump.name", "fallback": "%1$s used \"High Jump\".", "with": [{ "selector": "@s" }]}]
execute as @s[tag=!STAGE_BOUND] at @s run tag @s add HJUMP_Exec
# Pre Particles

# Team = RED
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tag @e[team=BLU,sort=nearest,distance=..20,limit=1] add HJUMP_BLU
execute as @s[team=RED,tag=!STAGE_BOUND] at @s run tp @s @e[tag=HJUMP_BLU,sort=nearest,limit=1]
execute as @s[team=RED,tag=!STAGE_BOUND] at @s as @e[tag=HJUMP_BLU,sort=nearest,limit=1] at @s run damage @s 60.0 player_attack by @a[team=RED,tag=HJUMP_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tag @e[team=RED,sort=nearest,distance=..20,limit=1] add HJUMP_RED
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s run tp @s @e[tag=HJUMP_RED,sort=nearest,limit=1]
execute as @s[team=BLU,tag=!STAGE_BOUND] at @s as @e[tag=HJUMP_RED,sort=nearest,limit=1] at @s run damage @s 60.0 player_attack by @a[team=BLU,tag=HJUMP_Exec,limit=1]
# Post Particles

# Post Process
# - LIMIT BREAK Accumulate
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_CHARGE matches ..99 run scoreboard players add @s LB_CHARGE 1
# - Recast Timer
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s PROC_TIMER_WS 300
execute as @s[tag=!STAGE_BOUND] at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s[tag=!STAGE_BOUND] at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# - Remove Tag for Detectors
execute as @s[tag=!STAGE_BOUND,tag=HJUMP_Exec] at @s run tag @s remove HJUMP_Exec
execute as @e[tag=HJUMP_BLU] at @s run tag @s remove HJUMP_BLU
execute as @e[tag=HJUMP_RED] at @s run tag @s remove HJUMP_RED
# - Convert Item to "Mirage Dive" or "Nastrond (Active 'RedWyrmBlood')"
execute as @s[tag=!RedWyrmBlood] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/dragoon/extras/mirage_dive
execute as @s[tag=RedWyrmBlood] at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/dragoon/extras/nastrond
