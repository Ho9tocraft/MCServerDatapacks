#Player Initialize
#for Tick Roop, but for Not have scoreboard players
scoreboard players set @a scoreInit -1
execute as @a store success score @s scoreInit run scoreboard players get @s death
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s death 0
execute as @a store success score @s scoreInit run scoreboard players get @s MAX_MP
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s MAX_MP 10000
execute as @a store success score @s scoreInit run scoreboard players get @s NOW_MP
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s NOW_MP 10000
execute as @a store success score @s scoreInit run scoreboard players get @s NOW_HP
execute as @a if score @s scoreInit matches 0 run execute store result score @s NOW_HP run data get entity @s Health
execute as @a store success score @s scoreInit run scoreboard players get @s NOW_HP_RED
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s NOW_HP_RED 0
execute as @a store success score @s scoreInit run scoreboard players get @s NOW_HP_BLU
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s NOW_HP_BLU 0
execute as @a store success score @s scoreInit run scoreboard players get @s TEAMKILL_RED
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s TEAMKILL_RED 0
execute as @a store success score @s scoreInit run scoreboard players get @s TEAMKILL_BLU
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s TEAMKILL_BLU 0
execute as @a store success score @s scoreInit run scoreboard players get @s KILLEDTEAM_RED
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s KILLEDTEAM_RED 0
execute as @a store success score @s scoreInit run scoreboard players get @s KILLEDTEAM_BLU
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s KILLEDTEAM_BLU 0
execute as @a store success score @s scoreInit run scoreboard players get @s CURRENT_JOB
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s CURRENT_JOB -1
execute as @a store success score @s scoreInit run scoreboard players get @s WS_RECAST_T
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s WS_RECAST_T 0
execute as @a store success score @s scoreInit run scoreboard players get @s WS_RECAST_V
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s WS_RECAST_V 0
execute as @a store success score @s scoreInit run scoreboard players get @s MG_RECAST_T
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s MG_RECAST_T 0
execute as @a store success score @s scoreInit run scoreboard players get @s MG_RECAST_V
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s MG_RECAST_V 0
execute as @a store success score @s scoreInit run scoreboard players get @s CAST_TIMER
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s CAST_TIMER 0
execute as @a store success score @s scoreInit run scoreboard players get @s AB_RECAST_T
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s AB_RECAST_T 0
execute as @a store success score @s scoreInit run scoreboard players get @s AB_RECAST_V
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s AB_RECAST_V 0
execute as @a store success score @s scoreInit run scoreboard players get @s LB_CHARGE
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s LB_CHARGE 0
execute as @a store success score @s scoreInit run scoreboard players get @s LB_RECAST_T
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s LB_RECAST_T 0
execute as @a store success score @s scoreInit run scoreboard players get @s NOW_SURR_ENEMY
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s NOW_SURR_ENEMY 0
#Special Effects
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_DONE
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_DONE 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_0
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_0 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_1
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_1 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_2
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_2 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_3
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_3 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_4
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_4 0
execute as @a store success score @s scoreInit run scoreboard players get @s SPEFF_TIMER_5
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s SPEFF_TIMER_5 0
#Proc. Timer
execute as @a store success score @s scoreInit run scoreboard players get @s PROC_TIMER_WS
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s PROC_TIMER_WS 0
execute as @a store success score @s scoreInit run scoreboard players get @s PROC_TIMER_MG
execute as @a if score @s scoreInit matches 0 run scoreboard players set @s PROC_TIMER_MG 0
#PostProcess
execute as @a if score @s scoreInit matches 1 run scoreboard players set @s scoreInit 2
