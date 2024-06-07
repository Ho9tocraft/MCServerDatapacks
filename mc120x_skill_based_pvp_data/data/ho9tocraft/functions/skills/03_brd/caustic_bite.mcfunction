#Caustic Bite(コースティックバイト)
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run item replace entity @s weapon.offhand with tipped_arrow 1
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run item modify entity @s weapon.offhand ho9tocraft:jobs/bard/extras/tipped_arrow_mg
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run effect give @s absorption 180 19 false
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run effect give @s resistance 10 3 false
execute as @s[team=RED] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=BLU,distance=..20] at @s as @e[team=BLU,distance=..10] run effect give @s slowness 5 255 true
execute as @s[team=RED] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=BLU,distance=..20] at @s as @e[team=BLU,distance=..10] run effect give @s jump_boost 5 255 true
execute as @s[team=RED] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=BLU,distance=..20] at @s as @e[team=BLU,distance=..10] run effect give @s glowing 5 255 true
execute as @s[team=BLU] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=RED,distance=..20] at @s as @e[team=RED,distance=..10] run effect give @s slowness 5 255 true
execute as @s[team=BLU] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=RED,distance=..20] at @s as @e[team=RED,distance=..10] run effect give @s jump_boost 5 255 true
execute as @s[team=BLU] at @s if predicate ho9tocraft:passive_selector/have_arrow as @e[team=RED,distance=..20] at @s as @e[team=RED,distance=..10] run effect give @s glowing 5 255 true
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s WS_RECAST_T matches 0..49 run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
execute as @s at @s if predicate ho9tocraft:passive_selector/have_arrow run clear @s arrow 1
execute as @s at @s if predicate ho9tocraft:passive_selector/not_have_arrow if score @s WS_RECAST_T matches ..199 run scoreboard players set @s WS_RECAST_T 600
execute as @s at @s if predicate ho9tocraft:passive_selector/not_have_arrow run scoreboard players set @s MG_RECAST_T 200
