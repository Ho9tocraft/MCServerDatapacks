#Mirage Dive(ミラージュダイブ)

execute as @s at @s run tellraw @a ["",{"bold": false, "italic": false, "translate": "use.mirage_dive.name", "fallback": "%1$s used \"Mirage Dive\".", "with": [{ "selector": "@s" }]}]
execute as @s at @s run tag @s add MDIVE_Exec
# Pre Particles

# Team = RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..20,sort=nearest,limit=1] at @s run damage @s 75.0 player_attack by @a[team=RED,tag=MDIVE_Exec,limit=1]
# Team = BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..20,sort=nearest,limit=1] at @s run damage @s 75.0 player_attack by @a[team=BLU,tag=MDIVE_Exec,limit=1]
# Post Particles
# Post Process
# - LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
# - Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 20
# - Remove Tag for Detectors
execute as @s at @s run tag @s remove MDIVE_Exec
# - Proc Finish
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/dragoon/extras/proc_end_ws
