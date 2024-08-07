#ディバイン・スパークショック
#define tag DivSS_Exec
#define tag DivSS_EFF_AS

execute as @s at @s if entity @e[team=BLU,distance=..224] if predicate ho9tocraft:item_selector/boss/divine_timefreese if function ho9tocraft:raid_event/boss_skills/divine_timefreese run return 0
execute as @s at @s run tag @s add DivSS_Exec
execute as @s at @s as @e[team=BLU,sort=random,limit=3] at @s run summon armor_stand ~ ~ ~ {Team:"RED",Invisible:1b,Tags:["DivSS_EFF_AS"],Silent:true}
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run summon lightning_bolt ~ ~ ~
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run damage @s 50.0 ho9tocraft:boss/lightning by @e[type=vindicator,sort=nearest,limit=1,tag=DivSS_Exec] from @e[type=vindicator,sort=nearest,limit=1,tag=DivSS_Exec]
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run effect give @s slowness 3 255 true
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run effect give @s blindness 3 255 true
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run effect give @s jump_boost 3 255 true
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s run effect give @s mining_fatigue 3 255 true
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s if score @s WS_RECAST_T matches 0..59 run scoreboard players set @s WS_RECAST_T 60
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s if score @s MG_RECAST_T matches 0..59 run scoreboard players set @s MG_RECAST_T 60
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s if score @s AB_RECAST_T matches 0..59 run scoreboard players set @s AB_RECAST_T 60
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s if score @s LB_RECAST_T matches 0..59 run scoreboard players set @s LB_RECAST_T 60
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s as @e[team=BLU,distance=..15] at @s if score @s AR_RECAST_T matches 0..59 run scoreboard players set @s AR_RECAST_T 60
execute as @e[type=armor_stand,tag=DivSS_EFF_AS] at @s run kill @s
execute as @s at @s run scoreboard players set @s MG_RECAST_T 200
execute as @s at @s run tag @s remove DivSS_Exec
