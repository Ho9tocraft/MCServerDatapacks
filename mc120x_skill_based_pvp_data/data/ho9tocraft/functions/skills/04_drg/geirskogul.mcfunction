#Geirskogul(ゲイルスコグル)

execute as @s at @s run tellraw @a ["",{"bold": false, "italic": false, "translate": "use.mirage_dive.name", "fallback": "%1$s used \"Geirskogul\".", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add Geir_Exec
# Pre Particles
# PreInit
execute as @s[team=RED] at @s as @e[team=BLU,distance=..15,sort=nearest,limit=1] at @s run tag @s add Geir_TGT_BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..15,sort=nearest,limit=1] at @s run tag @s add Geir_TGT_RED
# Team = RED
execute as @s[team=RED] at @s as @e[tag=Geir_TGT_BLU] at @s run damage @s 120.0 player_attack
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^ as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^2.5 as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^5 as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^7.5 as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^10 as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_BLU] eyes positioned ^ ^ ^12.5 as @e[team=BLU,tag=!Geir_TGT_BLU,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=RED,tag=Geir_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^ as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^2.5 as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^5 as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^7.5 as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^10 as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes facing entity @e[sort=nearest,limit=1,tag=Geir_TGT_RED] eyes positioned ^ ^ ^12.5 as @e[team=RED,tag=!Geir_TGT_RED,distance=..2.5] at @s run damage @s 60.0 player_attack by @e[team=BLU,tag=Geir_Exec,limit=1]
# Post Particles
# Post Process
# - LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
# - Recast Timer
execute as @s at @s run scoreboard players set @s PROC_TIMER_MG 400
execute as @s at @s run scoreboard players set @s MG_RECAST_T 30
# - Remove Tag for Detectors
execute as @s[tag=Geir_Exec] at @s run tag @s remove Geir_Exec
execute as @e[tag=Geir_TGT_RED] at @s run tag @s remove Geir_TGT_RED
execute as @e[tag=Geir_TGT_BLU] at @s run tag @s remove Geir_TGT_BLU
# - Active "Red Wyrm-Blood", and Proc to "Stardiver"
execute as @s at @s run tag @s add RedWyrmBlood
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/dragoon/extras/star_diver
