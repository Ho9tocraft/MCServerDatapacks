#Scorch(スコーチ)
#define tag Scorch_Exec
#define tag Scorch_TGT_BLU
#define tag Scorch_TGT_RED

execute as @s at @s run tag @s add Scorch_Exec
#region VH_Executed
execute as @s[tag=VH_Executed] at @s run effect give @s instant_health 1 1 true
execute as @s[tag=VH_Executed] at @s run effect give @s resistance 10 1 true
#endregion
#region team=RED
# VH_Executed
execute as @s[team=RED,tag=!VF_Executed] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run tag @s add Scorch_TGT_BLU
execute as @s[team=RED,tag=!VF_Executed] at @s as @e[tag=Scorch_TGT_BLU,limit=1] at @s run damage @s 68 indirect_magic by @a[team=RED,tag=Scorch_Exec,limit=1]
execute as @s[team=RED,tag=!VF_Executed] at @s as @e[tag=Scorch_TGT_BLU,limit=1] at @s as @e[team=BLU,tag=!Scorch_TGT_BLU,distance=..5] at @s run damage @s 40.8 indirect_magic by @a[team=RED,tag=Scorch_Exec,limit=1]
# VF_Executed
execute as @s[team=RED,tag=VF_Executed] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run tag @s add Scorch_TGT_BLU
execute as @s[team=RED,tag=VF_Executed] at @s as @e[tag=Scorch_TGT_BLU,limit=1] at @s run damage @s 102 indirect_magic by @a[team=RED,tag=Scorch_Exec,limit=1]
execute as @s[team=RED,tag=VF_Executed] at @s as @e[tag=Scorch_TGT_BLU,limit=1] at @s as @e[team=BLU,tag=!Scorch_TGT_BLU,distance=..5] at @s run damage @s 61.2 indirect_magic by @a[team=RED,tag=Scorch_Exec,limit=1]
#endregion
#region team=BLU
# VH_Executed
execute as @s[team=BLU,tag=!VF_Executed] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run tag @s add Scorch_TGT_RED
execute as @s[team=BLU,tag=!VF_Executed] at @s as @e[tag=Scorch_TGT_RED,limit=1] at @s run damage @s 68 indirect_magic by @a[team=BLU,tag=Scorch_Exec,limit=1]
execute as @s[team=BLU,tag=!VF_Executed] at @s as @e[tag=Scorch_TGT_RED,limit=1] at @s as @e[team=RED,tag=!Scorch_TGT_RED,distance=..5] at @s run damage @s 40.8 indirect_magic by @a[team=BLU,tag=Scorch_Exec,limit=1]
# VF_Executed
execute as @s[team=BLU,tag=VF_Executed] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run tag @s add Scorch_TGT_RED
execute as @s[team=BLU,tag=VF_Executed] at @s as @e[tag=Scorch_TGT_RED,limit=1] at @s run damage @s 102 indirect_magic by @a[team=BLU,tag=Scorch_Exec,limit=1]
execute as @s[team=BLU,tag=VF_Executed] at @s as @e[tag=Scorch_TGT_RED,limit=1] at @s as @e[team=RED,tag=!Scorch_TGT_RED,distance=..5] at @s run damage @s 61.2 indirect_magic by @a[team=BLU,tag=Scorch_Exec,limit=1]
#endregion
#region PostProcess
# Remove Tag for Detectors
execute as @s[tag=Scorch_Exec] at @s run tag @s remove Scorch_Exec
execute as @e[tag=Scorch_TGT_BLU] at @s run tag @s remove Scorch_TGT_BLU
execute as @e[tag=Scorch_TGT_RED] at @s run tag @s remove Scorch_TGT_RED
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
# Convert Item to "Scorch"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/resolution_ws
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/resolution_mg
#endregion
