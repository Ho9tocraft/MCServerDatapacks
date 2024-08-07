#ディバイン・タイムフリーズ（時間停止）
#define tag DivTF_Exec

execute as @s at @s run tag @s add DivTF_Exec
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s blindness 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s darkness 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s jump_boost 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s mining_fatigue 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s slowness 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s run effect give @s weakness 20 255 true
execute as @s at @s as @e[team=BLU,distance=..224] at @s if score @s WS_RECAST_T matches 0..399 run scoreboard players set @s WS_RECAST_T 400
execute as @s at @s as @e[team=BLU,distance=..224] at @s if score @s MG_RECAST_T matches 0..399 run scoreboard players set @s MG_RECAST_T 400
execute as @s at @s as @e[team=BLU,distance=..224] at @s if score @s AB_RECAST_T matches 0..399 run scoreboard players set @s AB_RECAST_T 400
execute as @s at @s as @e[team=BLU,distance=..224] at @s if score @s LB_RECAST_T matches 0..399 run scoreboard players set @s LB_RECAST_T 400
execute as @s at @s as @e[team=BLU,distance=..224] at @s if score @s AR_RECAST_T matches 0..399 run scoreboard players set @s AR_RECAST_T 400
execute as @s at @s as @e[team=BLU,distance=..224] at @s run title @s times 0s 5s 1s
execute as @s at @s as @e[team=BLU,distance=..224] at @s run title @s title ["", {"selector": "@s"},{"text": "よ、犯した罪を懺悔せよ…"}]
execute as @s at @s if score @s WS_RECAST_T matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s WS_RECAST_T 100
execute as @s at @s if score @s MG_RECAST_T matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s MG_RECAST_T 100
execute as @s at @s if score @s AB_RECAST_T matches 0 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE run scoreboard players set @s AB_RECAST_T 100
execute as @s at @s if score @s SPEFF_DONE matches 1 run scoreboard players set @s SPEFF_DONE 0
return 1
