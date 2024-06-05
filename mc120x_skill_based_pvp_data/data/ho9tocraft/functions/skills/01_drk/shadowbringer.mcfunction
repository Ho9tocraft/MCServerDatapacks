#Shadowbringer(シャドウブリンガー)
#define tag ShBr_Exec
#define tag ShBr_NearBLU
#define tag ShBr_NearRED

execute as @s at @s run tag @s add ShBr_Exec
#region team=RED
# detect Nearest
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^1 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^3 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^4 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^5 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^6 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^7 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^8 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
execute as @s[team=RED] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^9 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=BLU,distance=..1] at @s run tag @s add ShBr_NearBLU
# for Nearest
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^1 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^3 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^4 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^6 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^7 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^8 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^9 as @e[team=BLU,distance=..1,tag=ShBr_NearBLU] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
# for Other
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^1 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^3 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^4 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^6 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^7 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^8 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=RED] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^9 as @e[team=BLU,distance=..1,tag=!ShBr_NearBLU] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
# detect Nearest
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^1 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^2 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^3 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^4 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^5 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^6 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^7 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^8 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
execute as @s[team=BLU] at @s anchored eyes rotated ~ 0 positioned ^ ^ ^9 if score @s SPEFF_DONE matches 0 store success score @s SPEFF_DONE as @e[team=RED,distance=..1] at @s run tag @s add ShBr_NearRED
# for Nearest
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^1 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^3 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^4 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^6 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^7 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^8 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^9 as @e[team=BLU,distance=..1,tag=ShBr_NearRED] at @s run damage @s 96.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
# for Other
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^1 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^2 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^3 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^4 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^5 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^6 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^7 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^8 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
execute as @s[team=BLU] at @s anchored eyes if score @s SPEFF_DONE matches 1 rotated ~ 0 positioned ^ ^ ^9 as @e[team=BLU,distance=..1,tag=!ShBr_NearRED] at @s run damage @s 48.0 indirect_magic by @a[team=RED,tag=ShBr_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=ShBr_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# Particles
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s if score @s CHARGE_ACT matches 1.. run scoreboard players remove @s CHARGE_ACT 1
execute as @s at @s if score @s CHARGE_ACT matches 1.. run scoreboard players set @s WS_RECAST_T 30
execute as @s at @s if score @s CHARGE_ACT matches 0 run scoreboard players set @s WS_RECAST_T 1200
# Remove Tag for Detectors
execute as @s[tag=ShBr_Exec] at @s run tag @s remove ShBr_Exec
execute as @e[tag=ShBr_NearBLU] at @s run tag @s remove ShBr_NearBLU
execute as @e[tag=ShBr_NearRED] at @s run tag @s remove ShBr_NearRED
# End of Proc. When CHARGE_ACT is 0
execute as @s at @s if score @s CHARGE_ACT matches 0 if score @s PROC_TIMER_WS matches 1.. run scoreboard players set @s PROC_TIMER_WS 0
execute as @s at @s if score @s CHARGE_ACT matches 0 run item modify entity @s hotbar.1 ho9tocraft:jobs/dark_knight/extras/proc_end_ws
#endregion
