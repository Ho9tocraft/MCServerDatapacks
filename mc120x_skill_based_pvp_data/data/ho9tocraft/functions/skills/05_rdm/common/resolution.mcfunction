#Resolution(レゾリューション)
#define tag Resol_Exec
#define tag Resol_TGT_BLU
#define tag Resol_TGT_RED

execute as @s at @s run tag @s add Resol_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run tag @s add Resol_TGT_BLU
execute as @e[tag=Resol_TGT_BLU,limit=1] at @s run damage @s 75 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^2.5 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^5.0 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^7.5 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^10.0 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^12.5 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^15.0 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^17.5 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^20.0 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
execute as @s[team=RED] at @s facing entity @e[tag=Resol_TGT_BLU,sort=nearest,limit=1] eyes positioned ^ ^ ^22.5 as @e[team=BLU,tag=!Resol_TGT_BLU,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=RED,tag=Resol_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run tag @s add Resol_TGT_RED
execute as @e[tag=Resol_TGT_RED,limit=1] at @s run damage @s 75 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^2.5 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^5.0 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^7.5 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^10.0 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^12.5 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^15.0 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^17.5 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^20.0 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
execute as @s[team=BLU] at @s facing entity @e[tag=Resol_TGT_RED,sort=nearest,limit=1] eyes positioned ^ ^ ^22.5 as @e[team=RED,tag=!Resol_TGT_RED,distance=..2.5] at @s run damage @s 45 indirect_magic by @a[team=BLU,tag=Resol_Exec,limit=1]
#endregion
#region PostProcess
# Remove Tag for Detectors
execute as @s[tag=Resol_Exec] at @s run tag @s remove Resol_Exec
execute as @e[tag=Resol_TGT_BLU] at @s run tag @s remove Resol_TGT_BLU
execute as @e[tag=Resol_TGT_RED] at @s run tag @s remove Resol_TGT_RED
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches 91..95 run scoreboard players add @s LB_CHARGE 5
execute as @s at @s if score @s LB_CHARGE matches ..90 run scoreboard players add @s LB_CHARGE 10
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 400
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# End of Proc.
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/finish/proc_end_ws
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/finish/proc_end_mg
execute as @s at @s if score @s PROC_TIMER_WS matches 1.. run scoreboard players set @s PROC_TIMER_WS 0
execute as @s at @s if score @s PROC_TIMER_MG matches 1.. run scoreboard players set @s PROC_TIMER_MG 0
#endregion
