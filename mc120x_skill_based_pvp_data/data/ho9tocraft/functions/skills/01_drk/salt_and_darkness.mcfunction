#Salt and Darkness
#define tag NaCl_Exec

execute as @s at @s run tag @s add NaCl_Exec
#region team=RED
execute as @a[team=RED] at @s as @e[team=BLU,distance=..5,sort=nearest] at @s run damage @s 60.0 indirect_magic by @a[team=RED,tag=NaCl_Exec,sort=nearest,limit=1] from @a[team=RED,tag=NaCl_Exec,sort=nearest,limit=1]
#endregion
#region team=BLU
execute as @a[team=BLU] at @s as @e[team=RED,distance=..5,sort=nearest] at @s run damage @s 60.0 indirect_magic by @a[team=BLU,tag=NaCl_Exec,sort=nearest,limit=1] from @a[team=BLU,tag=NaCl_Exec,sort=nearest,limit=1]
#endregion
#region PostProcess
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches ..80 run scoreboard players add @s LB_CHARGE 20
execute as @s at @s if score @s LB_CHARGE matches 81..90 run scoreboard players add @s LB_CHARGE 10
execute as @s at @s if score @s LB_CHARGE matches 91..99 run scoreboard players add @s LB_CHARGE 1
# Recast Timer
execute as @s at @s run scoreboard players set @s MG_RECAST_T 400
# Remove Tag for Detectors
execute as @s[tag=NaCl_Exec] at @s run tag @s remove NaCl_Exec
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 3000
# End of Proc
execute as @s at @s if score @s PROC_TIMER_MG matches 1.. run scoreboard players set @s PROC_TIMER_MG 0
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/dark_knight/extras/proc_end_mg
#endregion
