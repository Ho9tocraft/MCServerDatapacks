#Verflare(ヴァルフレア)
#define tag Verflare_Exec
#define tag VFlare_TGT_BLU
#define tag VFlare_TGT_RED

execute as @s at @s run tag @s add Verflare_Exec
#region team=RED
execute as @s[team=RED] at @s as @e[team=BLU,distance=..25,sort=nearest,limit=1] at @s run tag @s add VFlare_TGT_BLU
execute as @e[tag=VFlare_TGT_BLU,limit=1] at @s run damage @s 60 indirect_magic by @a[team=RED,tag=Verflare_Exec,limit=1]
execute as @e[tag=VFlare_TGT_BLU,limit=1] at @s as @e[team=BLU,tag=!VFlare_TGT_BLU,distance=..5] at @s run damage @s 36 indirect_magic by @a[team=RED,tag=Verflare_Exec,limit=1]
#endregion
#region team=BLU
execute as @s[team=BLU] at @s as @e[team=RED,distance=..25,sort=nearest,limit=1] at @s run tag @s add VFlare_TGT_RED
execute as @e[tag=VFlare_TGT_RED,limit=1] at @s run damage @s 60 indirect_magic by @a[team=BLU,tag=Verflare_Exec,limit=1]
execute as @e[tag=VFlare_TGT_RED,limit=1] at @s as @e[team=RED,tag=!VFlare_TGT_RED,distance=..5] at @s run damage @s 36 indirect_magic by @a[team=BLU,tag=Verflare_Exec,limit=1]
#endregion
#region PostProcess
# Remove Tag for Detectors
execute as @s[tag=Verflare_Exec] at @s run tag @s remove Verflare_Exec
execute as @e[tag=VFlare_TGT_BLU] at @s run tag @s remove VFlare_TGT_BLU
execute as @e[tag=VFlare_TGT_RED] at @s run tag @s remove VFlare_TGT_RED
# LIMIT BREAK Accumulate
execute as @s at @s if score @s LB_CHARGE matches 96..99 run scoreboard players add @s LB_CHARGE 1
execute as @s at @s if score @s LB_CHARGE matches ..95 run scoreboard players add @s LB_CHARGE 5
execute as @s[tag=!ShiftBlack] at @s run function ho9tocraft:skills/05_rdm/common/postproc/to_black
# MP Cost
execute as @s at @s run scoreboard players remove @s NOW_MP 400
# Recast Timer
execute as @s at @s run scoreboard players set @s WS_RECAST_T 50
execute as @s at @s run scoreboard players set @s MG_RECAST_T 50
execute as @s at @s if score @s AB_RECAST_T matches 0..49 run scoreboard players set @s AB_RECAST_T 50
execute as @s at @s if score @s LB_RECAST_T matches 0..49 run scoreboard players set @s LB_RECAST_T 50
# Convert Item to "Scorch"
execute as @s at @s run item modify entity @s hotbar.1 ho9tocraft:jobs/red_mage/extras/common/weapon_skills/scorch_ws
execute as @s at @s run item modify entity @s hotbar.2 ho9tocraft:jobs/red_mage/extras/common/magics/scorch_mg
#endregion
