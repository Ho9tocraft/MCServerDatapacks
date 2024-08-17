#Nastrond(ナーストレンド)

execute as @s at @s run tellraw @a ["",{"bold": false, "italic": false, "translate": "use.nastrond.name", "fallback": "%1$s used \"Nastrond\".", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add Nastrond_Exec
# Pre Particles

# Team = RED
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^ as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2.5 as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^7.5 as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10 as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^12.5 as @e[team=BLU,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=RED,tag=Nastrond_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^ as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2.5 as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^5 as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^7.5 as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^10 as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^12.5 as @e[team=RED,distance=..2.5] at @s run damage @s 90.0 player_attack by @a[team=BLU,tag=Nastrond_Exec,limit=1]
# Post Particles
# Post Process
# - LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
# - Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 40
# - Remove Tag for Detectors
execute as @s at @s run tag @s remove Nastrond_Exec
# - Proc Finish
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/dragoon/extras/proc_end_ws
