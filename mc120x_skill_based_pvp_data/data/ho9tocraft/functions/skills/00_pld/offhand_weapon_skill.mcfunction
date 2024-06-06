#OFFHAND WEAPON SKILL
#Shield Bash(シールドバッシュ)
#define tag ShieldB_RED
#define tag ShieldB_BLU
#define tag ShieldB_PosToRED
#define tag ShieldB_PosToBLU

execute as @s at @s run tag @s add OffWS_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..3,sort=nearest,limit=1] at @s run tag @s add ShieldB_BLU
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run damage @s 18.0 minecraft:player_attack by @a[team=RED,tag=OffWS_Exec,limit=1]
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s darkness 5 255 true
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s blindness 5 255 true
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s slowness 5 255 true
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s mining_fatigue 5 255 true
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s jump_boost 5 255 true
execute as @s[team=RED] at @s as @e[tag=ShieldB_BLU,distance=..3,limit=1] at @s run effect give @s weakness 5 255 true
execute as @s[team=RED] at @s positioned ^ ^ ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ShieldB_PosToBLU"],DisabledSlots:4144959,Silent:true}
execute as @e[type=armor_stand,tag=ShieldB_PosToBLU,sort=nearest,limit=1] at @s run scoreboard players set @s knockbacked 0
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..3,sort=nearest,limit=1] at @s run tag @s add ShieldB_RED
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run damage @s 18.0 minecraft:player_attack by @a[team=BLU,tag=OffWS_Exec,limit=1]
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s darkness 5 255 true
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s blindness 5 255 true
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s slowness 5 255 true
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s mining_fatigue 5 255 true
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s jump_boost 5 255 true
execute as @s[team=BLU] at @s as @e[tag=ShieldB_RED,distance=..3,limit=1] at @s run effect give @s weakness 5 255 true
execute as @s[team=BLU] at @s positioned ^ ^ ^2 run summon armor_stand ~ ~ ~ {NoGravity:1b,Marker:1b,Invisible:1b,NoBasePlate:1b,Tags:["ShieldB_PosToRED"],DisabledSlots:4144959,Silent:true}
execute as @e[type=armor_stand,tag=ShieldB_PosToRED,sort=nearest,limit=1] at @s run scoreboard players set @s knockbacked 0
#endregion
#region PostProcess
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s if score @s MG_RECAST_T matches 0..49 run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
#endregion
